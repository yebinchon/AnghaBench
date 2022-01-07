; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flatten_reserve_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flatten_reserve_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.fdt_reserve_entry = type { i32, i32 }
%struct.reserve_info = type { %struct.fdt_reserve_entry, %struct.reserve_info* }
%struct.version_info = type { i32 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4
@flatten_reserve_list.null_re = internal global %struct.fdt_reserve_entry zeroinitializer, align 4
@reservenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reserve_info*, %struct.version_info*)* @flatten_reserve_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flatten_reserve_list(%struct.reserve_info* %0, %struct.version_info* %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca %struct.reserve_info*, align 8
  %5 = alloca %struct.version_info*, align 8
  %6 = alloca %struct.reserve_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.data, align 4
  %9 = alloca %struct.data, align 4
  store %struct.reserve_info* %0, %struct.reserve_info** %4, align 8
  store %struct.version_info* %1, %struct.version_info** %5, align 8
  %10 = bitcast %struct.data* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.data* @empty_data to i8*), i64 4, i1 false)
  %11 = load %struct.reserve_info*, %struct.reserve_info** %4, align 8
  store %struct.reserve_info* %11, %struct.reserve_info** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %14 = icmp ne %struct.reserve_info* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %17 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @data_append_re(i32 %19, %struct.fdt_reserve_entry* %17)
  %21 = getelementptr inbounds %struct.data, %struct.data* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.data* %3 to i8*
  %23 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  br label %24

24:                                               ; preds = %15
  %25 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %26 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %25, i32 0, i32 1
  %27 = load %struct.reserve_info*, %struct.reserve_info** %26, align 8
  store %struct.reserve_info* %27, %struct.reserve_info** %6, align 8
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @reservenum, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @data_append_re(i32 %35, %struct.fdt_reserve_entry* @flatten_reserve_list.null_re)
  %37 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.data* %3 to i8*
  %39 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %29

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @data_append_re(i32, %struct.fdt_reserve_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
