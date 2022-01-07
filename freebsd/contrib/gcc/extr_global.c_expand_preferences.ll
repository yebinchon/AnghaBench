; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_expand_preferences.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_expand_preferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@reg_allocno = common dso_local global i32* null, align 8
@REG_DEAD = common dso_local global i64 0, align 8
@allocno = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @expand_preferences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_preferences() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @get_insns()
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %174, %0
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %177

10:                                               ; preds = %7
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @INSN_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %173

14:                                               ; preds = %10
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @single_set(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %173

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @SET_DEST(i64 %19)
  %21 = call i64 @REG_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %173

23:                                               ; preds = %18
  %24 = load i32*, i32** @reg_allocno, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @SET_DEST(i64 %25)
  %27 = call i64 @REGNO(i64 %26)
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %173

31:                                               ; preds = %23
  %32 = load i64, i64* %1, align 8
  %33 = call i64 @REG_NOTES(i64 %32)
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %169, %31
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %172

37:                                               ; preds = %34
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @REG_NOTE_KIND(i64 %38)
  %40 = load i64, i64* @REG_DEAD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %168

42:                                               ; preds = %37
  %43 = load i64, i64* %2, align 8
  %44 = call i64 @XEXP(i64 %43, i32 0)
  %45 = call i64 @REG_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %168

47:                                               ; preds = %42
  %48 = load i32*, i32** @reg_allocno, align 8
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = call i64 @REGNO(i64 %50)
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %168

55:                                               ; preds = %47
  %56 = load i32*, i32** @reg_allocno, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @SET_DEST(i64 %57)
  %59 = call i64 @REGNO(i64 %58)
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @reg_allocno, align 8
  %63 = load i64, i64* %2, align 8
  %64 = call i64 @XEXP(i64 %63, i32 0)
  %65 = call i64 @REGNO(i64 %64)
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CONFLICTP(i32 %61, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %168, label %70

70:                                               ; preds = %55
  %71 = load i32*, i32** @reg_allocno, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i64 @SET_DEST(i64 %72)
  %74 = call i64 @REGNO(i64 %73)
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  %77 = load i32*, i32** @reg_allocno, align 8
  %78 = load i64, i64* %2, align 8
  %79 = call i64 @XEXP(i64 %78, i32 0)
  %80 = call i64 @REGNO(i64 %79)
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  %83 = load i64, i64* %2, align 8
  %84 = call i64 @XEXP(i64 %83, i32 0)
  %85 = load i64, i64* %3, align 8
  %86 = call i64 @SET_SRC(i64 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %70
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IOR_HARD_REG_SET(i32 %94, i32 %100)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @IOR_HARD_REG_SET(i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %88, %70
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @IOR_HARD_REG_SET(i32 %121, i32 %127)
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @IOR_HARD_REG_SET(i32 %134, i32 %140)
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @IOR_HARD_REG_SET(i32 %147, i32 %153)
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @allocno, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @IOR_HARD_REG_SET(i32 %160, i32 %166)
  br label %168

168:                                              ; preds = %115, %55, %47, %42, %37
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %2, align 8
  %171 = call i64 @XEXP(i64 %170, i32 1)
  store i64 %171, i64* %2, align 8
  br label %34

172:                                              ; preds = %34
  br label %173

173:                                              ; preds = %172, %23, %18, %14, %10
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %1, align 8
  %176 = call i64 @NEXT_INSN(i64 %175)
  store i64 %176, i64* %1, align 8
  br label %7

177:                                              ; preds = %7
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @CONFLICTP(i32, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @IOR_HARD_REG_SET(i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
