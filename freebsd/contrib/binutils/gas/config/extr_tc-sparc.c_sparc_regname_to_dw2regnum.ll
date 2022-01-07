; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_sparc_regname_to_dw2regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-sparc.c_sparc_regname_to_dw2regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"goli\00", align 1
@max_architecture = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_regname_to_dw2regnum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %151

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = call i8* @strchr(i8* %13, i8 signext %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sgt i32 %30, 56
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %20
  store i32 -1, i32* %2, align 4
  br label %151

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = mul nsw i64 %44, 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = sub nsw i64 %50, 48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %151

53:                                               ; preds = %12
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 115
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 112
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 14, i32* %2, align 4
  br label %151

71:                                               ; preds = %65, %59, %53
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 102
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 112
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 30, i32* %2, align 4
  br label %151

89:                                               ; preds = %83, %77, %71
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 102
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 114
  br i1 %100, label %101, label %150

101:                                              ; preds = %95, %89
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 @strtoul(i8* %103, i8** %5, i32 10)
  store i32 %104, i32* %6, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load i8*, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %101
  store i32 -1, i32* %2, align 4
  br label %151

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 102
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @max_architecture, align 4
  %123 = call i64 @SPARC_OPCODE_ARCH_V9_P(i32 %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %121, %114
  %126 = phi i1 [ false, %114 ], [ %124, %121 ]
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 64, i32 32
  %129 = icmp uge i32 %115, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %151

131:                                              ; preds = %125
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 102
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, 32
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp uge i32 %140, 64
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 -1, i32* %2, align 4
  br label %151

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %131
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %151

150:                                              ; preds = %95
  store i32 -1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %148, %146, %130, %113, %88, %70, %39, %38, %11
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @SPARC_OPCODE_ARCH_V9_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
