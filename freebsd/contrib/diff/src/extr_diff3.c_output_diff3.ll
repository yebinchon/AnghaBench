; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { i32 }

@output_diff3.skew_increment = internal global [3 x i32] [i32 2, i32 3, i32 1], align 4
@initial_tab = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"internal error: invalid diff type passed to output\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"====%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%lda\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%ldc\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%ld,%ldc\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\0A\\ %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"No newline at end of file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.diff3_block*, i32*, i32*)* @output_diff3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_diff3(i32* %0, %struct.diff3_block* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.diff3_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.diff3_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [2 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.diff3_block* %1, %struct.diff3_block** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load i64, i64* @initial_tab, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %16, align 8
  %27 = load %struct.diff3_block*, %struct.diff3_block** %6, align 8
  store %struct.diff3_block* %27, %struct.diff3_block** %12, align 8
  br label %28

28:                                               ; preds = %162, %4
  %29 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %30 = icmp ne %struct.diff3_block* %29, null
  br i1 %30, label %31, label %165

31:                                               ; preds = %28
  %32 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %33 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %54 [
    i32 128, label %35
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
  ]

35:                                               ; preds = %31
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %36, align 1
  store i32 3, i32* %15, align 4
  store i32 3, i32* %10, align 4
  br label %56

37:                                               ; preds = %31, %31, %31
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %40 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 131
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 49
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 1
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  br label %56

54:                                               ; preds = %31
  %55 = call i32 @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %37, %35
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %159, %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %161

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @D_LOWLINE(%struct.diff3_block* %69, i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @D_HIGHLINE(%struct.diff3_block* %72, i32 %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %21, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %22, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = sub nsw i32 %83, %84
  switch i32 %85, label %95 [
    i32 1, label %86
    i32 0, label %91
  ]

86:                                               ; preds = %63
  %87 = load i32*, i32** %5, align 8
  %88 = load i64, i64* %21, align 8
  %89 = sub nsw i64 %88, 1
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  br label %100

91:                                               ; preds = %63
  %92 = load i32*, i32** %5, align 8
  %93 = load i64, i64* %21, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  br label %100

95:                                               ; preds = %63
  %96 = load i32*, i32** %5, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %22, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %95, %91, %86
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %148

105:                                              ; preds = %100
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %105
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* %112)
  %114 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i8* @D_RELNUM(%struct.diff3_block* %114, i32 %115, i32 %116)
  store i8* %117, i8** %11, align 8
  %118 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @D_RELLEN(%struct.diff3_block* %118, i32 %119, i32 %120)
  store i64 %121, i64* %14, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @fwrite(i8* %122, i32 1, i64 %123, i32* %124)
  br label %126

126:                                              ; preds = %110
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %19, align 4
  %131 = sub nsw i32 %129, %130
  %132 = add nsw i32 %131, 1
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %110, label %134

134:                                              ; preds = %126
  %135 = load i8*, i8** %11, align 8
  %136 = load i64, i64* %14, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 10
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32*, i32** %5, align 8
  %144 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %142, %134
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147, %104
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* @output_diff3.skew_increment, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  br label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi i32 [ %155, %151 ], [ %158, %156 ]
  store i32 %160, i32* %9, align 4
  br label %60

161:                                              ; preds = %60
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  %164 = call %struct.diff3_block* @D_NEXT(%struct.diff3_block* %163)
  store %struct.diff3_block* %164, %struct.diff3_block** %12, align 8
  br label %28

165:                                              ; preds = %28
  ret void
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @D_LOWLINE(%struct.diff3_block*, i32) #1

declare dso_local i32 @D_HIGHLINE(%struct.diff3_block*, i32) #1

declare dso_local i8* @D_RELNUM(%struct.diff3_block*, i32, i32) #1

declare dso_local i64 @D_RELLEN(%struct.diff3_block*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.diff3_block* @D_NEXT(%struct.diff3_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
