; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_static_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_class_static_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CXXFLAGS_STATIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @ieee_class_static_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_class_static_member(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ieee_handle*
  store %struct.ieee_handle* %14, %struct.ieee_handle** %10, align 8
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %16 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %15)
  %17 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %18 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %23 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br label %29

29:                                               ; preds = %21, %4
  %30 = phi i1 [ false, %4 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ieee_vis_to_flags(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @CXXFLAGS_STATIC, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %39 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %48 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = call i32 @ieee_change_buffer(%struct.ieee_handle* %46, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %29
  %57 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ieee_write_asn(%struct.ieee_handle* %57, i32 %58, i32 100)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ieee_write_asn(%struct.ieee_handle* %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @ieee_write_atn65(%struct.ieee_handle* %68, i32 %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @ieee_write_atn65(%struct.ieee_handle* %74, i32 %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73, %67, %61, %56, %29
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %92

81:                                               ; preds = %73
  %82 = load %struct.ieee_handle*, %struct.ieee_handle** %10, align 8
  %83 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 4
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %81, %79
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ieee_pop_unused_type(%struct.ieee_handle*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_vis_to_flags(i32) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
