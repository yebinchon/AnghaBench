; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_child_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@TT_LWP_RDTEXT = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@TT_LWP_WRDATA = common dso_local global i32 0, align 4
@TT_LWP_WRTEXT = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_attrib*, align 8
  %13 = alloca %struct.target_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %12, align 8
  store %struct.target_ops* %5, %struct.target_ops** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, -8
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %15, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = sub i64 %26, 1
  %28 = udiv i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @alloca(i32 %33)
  %35 = inttoptr i64 %34 to i64*
  store i64* %35, i64** %17, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %133

38:                                               ; preds = %6
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %55

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @TT_LWP_RDTEXT, align 4
  %47 = load i32, i32* @inferior_ptid, align 4
  %48 = call i32 @PIDGET(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @TT_NIL, align 4
  %51 = load i32, i32* @TT_NIL, align 4
  %52 = call i64 @call_ttrace(i32 %46, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i64*, i64** %17, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %16, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i32, i32* @TT_LWP_RDTEXT, align 4
  %60 = load i32, i32* @inferior_ptid, align 4
  %61 = call i32 @PIDGET(i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %16, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = add i64 %63, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @TT_NIL, align 4
  %71 = load i32, i32* @TT_NIL, align 4
  %72 = call i64 @call_ttrace(i32 %59, i32 %61, i32 %69, i32 %70, i32 %71)
  %73 = load i64*, i64** %17, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %58, %55
  %79 = load i64*, i64** %17, align 8
  %80 = bitcast i64* %79 to i8*
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 7
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %125, %78
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %88
  store i64 0, i64* @errno, align 8
  %93 = load i32, i32* @TT_LWP_WRDATA, align 4
  %94 = load i32, i32* @inferior_ptid, align 4
  %95 = call i32 @PIDGET(i32 %94)
  %96 = load i32, i32* %15, align 4
  %97 = load i64*, i64** %17, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @TT_NIL, align 4
  %104 = call i64 @call_ttrace(i32 %93, i32 %95, i32 %96, i32 %102, i32 %103)
  %105 = load i64, i64* @errno, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %92
  store i64 0, i64* @errno, align 8
  %108 = load i32, i32* @TT_LWP_WRTEXT, align 4
  %109 = load i32, i32* @inferior_ptid, align 4
  %110 = call i32 @PIDGET(i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = load i64*, i64** %17, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @TT_NIL, align 4
  %119 = call i64 @call_ttrace(i32 %108, i32 %110, i32 %111, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %107, %92
  %121 = load i64, i64* @errno, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %174

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %15, align 4
  br label %88

132:                                              ; preds = %88
  br label %172

133:                                              ; preds = %6
  store i32 0, i32* %14, align 4
  br label %134

134:                                              ; preds = %155, %133
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %134
  store i64 0, i64* @errno, align 8
  %139 = load i32, i32* @TT_LWP_RDTEXT, align 4
  %140 = load i32, i32* @inferior_ptid, align 4
  %141 = call i32 @PIDGET(i32 %140)
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @TT_NIL, align 4
  %144 = load i32, i32* @TT_NIL, align 4
  %145 = call i64 @call_ttrace(i32 %139, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i64*, i64** %17, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 %145, i64* %149, align 8
  %150 = load i64, i64* @errno, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %174

153:                                              ; preds = %138
  %154 = load i32, i32* @QUIT, align 4
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %15, align 4
  br label %134

162:                                              ; preds = %134
  %163 = load i8*, i8** %9, align 8
  %164 = load i64*, i64** %17, align 8
  %165 = bitcast i64* %164 to i8*
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = and i64 %167, 7
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @memcpy(i8* %163, i8* %169, i32 %170)
  br label %172

172:                                              ; preds = %162, %132
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %172, %152, %123
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
