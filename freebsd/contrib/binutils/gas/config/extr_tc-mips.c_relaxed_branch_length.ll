; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_relaxed_branch_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_relaxed_branch_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@mips_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@mips_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ISA_MIPS1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @relaxed_branch_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relaxed_branch_length(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @S_IS_DEFINED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @S_GET_SEGMENT(i32 %23)
  %25 = icmp eq i32* %20, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @S_GET_VALUE(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = add nsw i64 %41, 4
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, -131072
  br i1 %49, label %53, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* %10, align 4
  %52 = icmp sge i32 %51, 131072
  br label %53

53:                                               ; preds = %50, %26
  %54 = phi i1 [ true, %26 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %7, align 8
  br label %65

57:                                               ; preds = %19, %13, %3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %7, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @RELAX_BRANCH_TOOFAR(i32 %75)
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @RELAX_BRANCH_UNCOND(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @RELAX_BRANCH_LIKELY(i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @RELAX_BRANCH_LINK(i32 %89)
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @RELAX_BRANCH_ENCODE(i32 %82, i32 %86, i32 %90, i64 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %78, %71, %68, %65
  store i32 4, i32* %8, align 4
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @RELAX_BRANCH_LIKELY(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107, %101
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 8
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %110, %107, %101
  %114 = load i64, i64* @mips_pic, align 8
  %115 = load i64, i64* @NO_PIC, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 8
  store i32 %119, i32* %8, align 4
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mips_opts, i32 0, i32 0), align 8
  %121 = load i64, i64* @ISA_MIPS1, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %117
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = icmp ne %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @RELAX_BRANCH_UNCOND(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %142, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136, %130
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 8
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %136, %130
  br label %143

143:                                              ; preds = %142, %95
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i64 @S_IS_DEFINED(i32) #1

declare dso_local i32* @S_GET_SEGMENT(i32) #1

declare dso_local i32 @S_GET_VALUE(i32) #1

declare dso_local i64 @RELAX_BRANCH_TOOFAR(i32) #1

declare dso_local i32 @RELAX_BRANCH_ENCODE(i32, i32, i32, i64) #1

declare dso_local i32 @RELAX_BRANCH_UNCOND(i32) #1

declare dso_local i32 @RELAX_BRANCH_LIKELY(i32) #1

declare dso_local i32 @RELAX_BRANCH_LINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
