; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flat_read_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_flattree.c_flat_read_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32 }
%struct.inbuf = type { i32 }
%struct.data = type { i32 }

@FTF_VARALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (%struct.inbuf*, %struct.inbuf*, i32)* @flat_read_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @flat_read_property(%struct.inbuf* %0, %struct.inbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.inbuf*, align 8
  %5 = alloca %struct.inbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.data, align 4
  %11 = alloca %struct.data, align 4
  store %struct.inbuf* %0, %struct.inbuf** %4, align 8
  store %struct.inbuf* %1, %struct.inbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %13 = call i32 @flat_read_word(%struct.inbuf* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %15 = call i32 @flat_read_word(%struct.inbuf* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.inbuf*, %struct.inbuf** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @flat_read_stringtable(%struct.inbuf* %16, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FTF_VARALIGN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %28 = call i32 @flat_realign(%struct.inbuf* %27, i32 8)
  br label %29

29:                                               ; preds = %26, %23, %3
  %30 = load %struct.inbuf*, %struct.inbuf** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @flat_read_data(%struct.inbuf* %30, i32 %31)
  %33 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.data* %10 to i8*
  %35 = bitcast %struct.data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.data, %struct.data* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.property* @build_property(i8* %36, i32 %38, i32* null)
  ret %struct.property* %39
}

declare dso_local i32 @flat_read_word(%struct.inbuf*) #1

declare dso_local i8* @flat_read_stringtable(%struct.inbuf*, i32) #1

declare dso_local i32 @flat_realign(%struct.inbuf*, i32) #1

declare dso_local i32 @flat_read_data(%struct.inbuf*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.property* @build_property(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
