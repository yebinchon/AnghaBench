; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%union.sltentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SLT_END = common dso_local global i64 0, align 8
@SLT_NORMAL = common dso_local global i64 0, align 8
@SLT_NORMAL_OFFSET = common dso_local global i64 0, align 8
@SLT_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.objfile*)* @hpread_get_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_get_location(i64 %0, %struct.objfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %union.sltentry*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.objfile* %1, %struct.objfile** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.objfile*, %struct.objfile** %5, align 8
  %10 = call %union.sltentry* @hpread_get_slt(i64 %8, %struct.objfile* %9)
  store %union.sltentry* %10, %union.sltentry** %6, align 8
  %11 = load %union.sltentry*, %union.sltentry** %6, align 8
  %12 = bitcast %union.sltentry* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SLT_END, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load %union.sltentry*, %union.sltentry** %6, align 8
  %20 = bitcast %union.sltentry* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SLT_NORMAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %union.sltentry*, %union.sltentry** %6, align 8
  %27 = bitcast %union.sltentry* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SLT_NORMAL_OFFSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %union.sltentry*, %union.sltentry** %6, align 8
  %34 = bitcast %union.sltentry* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SLT_EXIT, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %32, %25, %18
  %40 = phi i1 [ false, %25 ], [ false, %18 ], [ %38, %32 ]
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.objfile*, %struct.objfile** %5, align 8
  %47 = call %union.sltentry* @hpread_get_slt(i64 %45, %struct.objfile* %46)
  store %union.sltentry* %47, %union.sltentry** %6, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %18

51:                                               ; preds = %39
  %52 = load %union.sltentry*, %union.sltentry** %6, align 8
  %53 = bitcast %union.sltentry* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SLT_NORMAL_OFFSET, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %union.sltentry*, %union.sltentry** %6, align 8
  %60 = bitcast %union.sltentry* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %3, align 4
  br label %119

63:                                               ; preds = %51
  %64 = load %union.sltentry*, %union.sltentry** %6, align 8
  %65 = bitcast %union.sltentry* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %3, align 4
  br label %119

68:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %99, %68
  %70 = load %union.sltentry*, %union.sltentry** %6, align 8
  %71 = bitcast %union.sltentry* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SLT_NORMAL, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load %union.sltentry*, %union.sltentry** %6, align 8
  %78 = bitcast %union.sltentry* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SLT_NORMAL_OFFSET, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %union.sltentry*, %union.sltentry** %6, align 8
  %85 = bitcast %union.sltentry* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SLT_EXIT, align 8
  %89 = icmp ne i64 %87, %88
  br label %90

90:                                               ; preds = %83, %76, %69
  %91 = phi i1 [ false, %76 ], [ false, %69 ], [ %89, %83 ]
  br i1 %91, label %92, label %102

92:                                               ; preds = %90
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.objfile*, %struct.objfile** %5, align 8
  %98 = call %union.sltentry* @hpread_get_slt(i64 %96, %struct.objfile* %97)
  store %union.sltentry* %98, %union.sltentry** %6, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %69

102:                                              ; preds = %90
  %103 = load %union.sltentry*, %union.sltentry** %6, align 8
  %104 = bitcast %union.sltentry* %103 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SLT_NORMAL_OFFSET, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %union.sltentry*, %union.sltentry** %6, align 8
  %111 = bitcast %union.sltentry* %110 to %struct.TYPE_3__*
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %3, align 4
  br label %119

114:                                              ; preds = %102
  %115 = load %union.sltentry*, %union.sltentry** %6, align 8
  %116 = bitcast %union.sltentry* %115 to %struct.TYPE_4__*
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %109, %63, %58
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %union.sltentry* @hpread_get_slt(i64, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
