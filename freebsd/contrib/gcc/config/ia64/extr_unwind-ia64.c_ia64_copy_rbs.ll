; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_ia64_copy_rbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_ia64_copy_rbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._Unwind_Context*, i64, i64, i64, i64)* @ia64_copy_rbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_copy_rbs(%struct._Unwind_Context* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct._Unwind_Context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = shl i64 %15, 3
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = lshr i64 %17, 3
  %19 = and i64 %18, 63
  %20 = shl i64 1, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %10, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %26 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %31 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %38

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = or i64 %34, 504
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i64 [ %32, %29 ], [ %37, %33 ]
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = lshr i64 %40, 3
  %42 = and i64 %41, 63
  %43 = shl i64 1, %42
  %44 = sub i64 %43, 1
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %12, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = and i64 %48, 9223372036854775807
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = lshr i64 %52, 3
  %54 = and i64 %53, 63
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %7, align 8
  %56 = and i64 %55, 504
  %57 = load i64, i64* %8, align 8
  %58 = and i64 %57, 504
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %60, %38
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 63, %64
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %7, align 8
  %67 = and i64 %66, 504
  %68 = load i64, i64* %8, align 8
  %69 = and i64 %68, 504
  %70 = icmp uge i64 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i64, i64* %7, align 8
  %73 = xor i64 %72, -1
  %74 = and i64 %73, 504
  store i64 %74, i64* %11, align 8
  br label %104

75:                                               ; preds = %63
  %76 = load i64, i64* %8, align 8
  %77 = xor i64 %76, -1
  %78 = and i64 %77, 504
  store i64 %78, i64* %11, align 8
  br label %143

79:                                               ; No predecessors!
  br label %80

80:                                               ; preds = %149, %79
  %81 = load i64, i64* %9, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %172

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %86 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %91 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  br label %98

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  %95 = or i64 %94, 504
  %96 = inttoptr i64 %95 to i64*
  %97 = load i64, i64* %96, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i64 [ %92, %89 ], [ %97, %93 ]
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = and i64 %100, 9223372036854775807
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %14, align 8
  %103 = shl i64 %102, 3
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %98, %71
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i64, i64* %7, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load i64, i64* %8, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @memcpy(i8* %112, i8* %114, i64 %115)
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = shl i64 %126, %127
  %129 = and i64 %128, 9223372036854775807
  %130 = load i64, i64* %10, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %9, align 8
  %133 = icmp sle i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %110
  br label %172

135:                                              ; preds = %110
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %7, align 8
  %138 = inttoptr i64 %137 to i64*
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 8
  store i64 %140, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %141 = load i64, i64* %13, align 8
  %142 = shl i64 %141, 3
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %135, %75
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %9, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %11, align 8
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i64, i64* %7, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = load i64, i64* %8, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @memcpy(i8* %151, i8* %153, i64 %154)
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %7, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %11, align 8
  %160 = add nsw i64 %159, 8
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* %11, align 8
  %164 = add nsw i64 %163, 8
  %165 = load i64, i64* %9, align 8
  %166 = sub nsw i64 %165, %164
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %14, align 8
  %169 = lshr i64 %167, %168
  %170 = load i64, i64* %10, align 8
  %171 = or i64 %170, %169
  store i64 %171, i64* %10, align 8
  br label %80

172:                                              ; preds = %134, %80
  %173 = load i64, i64* %7, align 8
  %174 = and i64 %173, 504
  %175 = icmp eq i64 %174, 504
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %7, align 8
  %179 = inttoptr i64 %178 to i64*
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 8
  store i64 %181, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %182

182:                                              ; preds = %176, %172
  %183 = load i64, i64* %7, align 8
  %184 = and i64 %183, -512
  %185 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %186 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %189 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
