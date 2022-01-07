; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_uw_update_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_uw_update_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i64*, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@UNW_REG_PSP = common dso_local global i64 0, align 8
@UNW_WHERE_NONE = common dso_local global i64 0, align 8
@UNW_REG_PRI_UNAT_GR = common dso_local global i64 0, align 8
@UNW_REG_PRI_UNAT_MEM = common dso_local global i64 0, align 8
@UNW_REG_BSP = common dso_local global i64 0, align 8
@UNW_NUM_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._Unwind_Context*, %struct.TYPE_9__*)* @uw_update_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uw_update_context(%struct._Unwind_Context* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct._Unwind_Context*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %10 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %13 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i64, i64* @UNW_REG_PSP, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %16, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* @UNW_REG_PSP, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UNW_WHERE_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %39 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i64, i64* @UNW_REG_PSP, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %40, %48
  %50 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %51 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %57

52:                                               ; preds = %26
  %53 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i64, i64* @UNW_REG_PSP, align 8
  %56 = call i32 @uw_update_reg_address(%struct._Unwind_Context* %53, %struct.TYPE_9__* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %37
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i64, i64* @UNW_REG_PRI_UNAT_GR, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %61, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i64, i64* @UNW_REG_PRI_UNAT_MEM, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %116

74:                                               ; preds = %58
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* @UNW_REG_PRI_UNAT_MEM, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %77, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i64, i64* @UNW_REG_PRI_UNAT_GR, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %115

90:                                               ; preds = %74
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* @UNW_REG_PRI_UNAT_MEM, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i64, i64* @UNW_REG_PRI_UNAT_GR, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %98, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load i64, i64* @UNW_REG_PRI_UNAT_MEM, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %114

111:                                              ; preds = %90
  %112 = load i64, i64* @UNW_REG_PRI_UNAT_GR, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %71
  %117 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 @uw_update_reg_address(%struct._Unwind_Context* %117, %struct.TYPE_9__* %118, i64 %120)
  %122 = load i64, i64* @UNW_REG_BSP, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %132, %116
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @UNW_NUM_REGS, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @uw_update_reg_address(%struct._Unwind_Context* %128, %struct.TYPE_9__* %129, i64 %130)
  br label %132

132:                                              ; preds = %127
  %133 = load i64, i64* %5, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %123

135:                                              ; preds = %123
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %135
  %141 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %142 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %7, align 8
  %146 = lshr i64 %145, 7
  %147 = and i64 %146, 127
  store i64 %147, i64* %8, align 8
  %148 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %149 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %8, align 8
  %153 = sub i64 0, %152
  %154 = call i64 @ia64_rse_skip_regs(i64* %151, i64 %153)
  %155 = load %struct._Unwind_Context*, %struct._Unwind_Context** %3, align 8
  %156 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %140, %135
  ret void
}

declare dso_local i32 @uw_update_reg_address(%struct._Unwind_Context*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @ia64_rse_skip_regs(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
