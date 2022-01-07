; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeAddAllSrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeAddAllSrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i64, i64 }

@OP_MARK = common dso_local global i32 0, align 4
@OP_EXEC = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@OP_INVISIBLE = common dso_local global i32 0, align 4
@OP_ARCHV = common dso_local global i32 0, align 4
@MEMBER = common dso_local global i32 0, align 4
@OP_JOIN = common dso_local global i32 0, align 4
@ALLSRC = common dso_local global i32 0, align 4
@MADE = common dso_local global i64 0, align 8
@OODATE = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @MakeAddAllSrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeAddAllSrc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OP_MARK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

23:                                               ; preds = %2
  %24 = load i32, i32* @OP_MARK, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OP_EXEC, align 4
  %33 = load i32, i32* @OP_USE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @OP_USEBEFORE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @OP_INVISIBLE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %138

41:                                               ; preds = %23
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OP_ARCHV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MEMBER, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = call i8* @Var_Value(i32 %49, %struct.TYPE_4__* %50, i8** %10)
  store i8* %51, i8** %8, align 8
  br label %67

52:                                               ; preds = %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i8* [ %60, %57 ], [ %64, %61 ]
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OP_JOIN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @ALLSRC, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = call i8* @Var_Value(i32 %75, %struct.TYPE_4__* %76, i8** %11)
  store i8* %77, i8** %9, align 8
  br label %80

78:                                               ; preds = %67
  %79 = load i8*, i8** %8, align 8
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* @ALLSRC, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = call i32 @Var_Append(i32 %84, i8* %85, %struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @OP_JOIN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MADE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @OODATE, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = call i32 @Var_Append(i32 %104, i8* %105, %struct.TYPE_4__* %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %135

109:                                              ; preds = %88
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @now, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MADE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123, %109
  %130 = load i32, i32* @OODATE, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = call i32 @Var_Append(i32 %130, i8* %131, %struct.TYPE_4__* %132)
  br label %134

134:                                              ; preds = %129, %123, %117
  br label %135

135:                                              ; preds = %134, %108
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %23
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i8* @Var_Value(i32, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @Var_Append(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
