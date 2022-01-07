; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/baddof/extr_baddof.c_corrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/baddof/extr_baddof.c_corrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corrupt.ttl = internal global i32 0, align 4
@corrupt.valid = internal global i32 0, align 4
@LEAP_DISTANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"valid DOF #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@DTRACEIOC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"enabled %d probes; resetting device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"/devices/pseudo/dtrace@0:dtrace\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"couldn't open DTrace pseudo device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @corrupt(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @LEAP_DISTANCE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @LEAP_DISTANCE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  br label %22

22:                                               ; preds = %160, %3
  %23 = load i32, i32* @corrupt.valid, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @corrupt.valid, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %110, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %9, align 1
  %38 = load i32, i32* %7, align 4
  %39 = srem i32 %38, 8
  %40 = shl i32 1, %39
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, %40
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i32, i32* %7, align 4
  %51 = srem i32 %50, 100
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @DTRACEIOC_ENABLE, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @ioctl(i32 %57, i32 %58, i8* %59)
  store i32 %60, i32* %14, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i8, i8* %9, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  br label %110

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @corrupt.ttl, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* @corrupt.ttl, align 4
  %73 = load i32, i32* @corrupt.ttl, align 4
  %74 = icmp slt i32 %73, 10000
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i8, i8* %9, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sdiv i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %110

82:                                               ; preds = %69
  %83 = load i32, i32* @corrupt.ttl, align 4
  %84 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i32, i32* @O_RDWR, align 4
  %88 = call i32 @open(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %82
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dup2(i32 %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %97, %93
  store i32 0, i32* @corrupt.ttl, align 4
  %104 = load i8, i8* %9, align 1
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  br label %110

110:                                              ; preds = %103, %75, %62
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %26

113:                                              ; preds = %26
  br label %114

114:                                              ; preds = %186, %113
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %151, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @LEAP_DISTANCE, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %115
  %120 = call i32 (...) @lrand48()
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 %121, 8
  %123 = srem i32 %120, %122
  store i32 %123, i32* %7, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sdiv i32 %125, 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %18, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sdiv i32 %134, 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %21, i64 %137
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = srem i32 %139, 8
  %141 = shl i32 1, %140
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sdiv i32 %143, 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = xor i32 %148, %141
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  br label %151

151:                                              ; preds = %119
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %115

154:                                              ; preds = %115
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @DTRACEIOC_ENABLE, align 4
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 @ioctl(i32 %155, i32 %156, i8* %157)
  store i32 %158, i32* %14, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @corrupt.ttl, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* @corrupt.ttl, align 4
  br label %22

164:                                              ; preds = %154
  %165 = load i32, i32* @LEAP_DISTANCE, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %183, %164
  %168 = load i32, i32* %8, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %18, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %5, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %21, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  store i8 %175, i8* %182, align 1
  br label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %8, align 4
  br label %167

186:                                              ; preds = %167
  br label %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @lrand48(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
