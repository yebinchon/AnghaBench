; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_append_to_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_livetree.c_append_to_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }
%struct.node = type { i32 }
%struct.property = type { %struct.data }

@empty_data = common dso_local global %struct.data zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_to_property(%struct.node* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.data, align 4
  %10 = alloca %struct.property*, align 8
  %11 = alloca %struct.data, align 4
  %12 = alloca %struct.data, align 4
  store %struct.node* %0, %struct.node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.node*, %struct.node** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.property* @get_property(%struct.node* %13, i8* %14)
  store %struct.property* %15, %struct.property** %10, align 8
  %16 = load %struct.property*, %struct.property** %10, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.property*, %struct.property** %10, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 0
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.data, %struct.data* %20, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @data_append_data(i32 %24, i8* %21, i32 %22)
  %26 = getelementptr inbounds %struct.data, %struct.data* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.data* %9 to i8*
  %28 = bitcast %struct.data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.property*, %struct.property** %10, align 8
  %30 = getelementptr inbounds %struct.property, %struct.property* %29, i32 0, i32 0
  %31 = bitcast %struct.data* %30 to i8*
  %32 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  br label %48

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @empty_data, i32 0, i32 0), align 4
  %37 = call i32 @data_append_data(i32 %36, i8* %34, i32 %35)
  %38 = getelementptr inbounds %struct.data, %struct.data* %12, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.data* %9 to i8*
  %40 = bitcast %struct.data* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.property* @build_property(i8* %41, i32 %43)
  store %struct.property* %44, %struct.property** %10, align 8
  %45 = load %struct.node*, %struct.node** %5, align 8
  %46 = load %struct.property*, %struct.property** %10, align 8
  %47 = call i32 @add_property(%struct.node* %45, %struct.property* %46)
  br label %48

48:                                               ; preds = %33, %18
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @data_append_data(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.property* @build_property(i8*, i32) #1

declare dso_local i32 @add_property(%struct.node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
