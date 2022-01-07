; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_replace_bit_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_replace_bit_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32)* @replace_bit_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_bit_field(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %11, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %4
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %13, align 1
  %35 = load i8, i8* %13, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = srem i32 %37, 8
  %39 = ashr i32 %36, %38
  %40 = load i32, i32* %9, align 4
  %41 = srem i32 %40, 8
  %42 = shl i32 %39, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8, i8* %13, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = srem i32 %46, 8
  %48 = sub nsw i32 8, %47
  %49 = shl i32 %45, %48
  %50 = trunc i32 %49 to i8
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = srem i32 %52, 8
  %54 = sub nsw i32 8, %53
  %55 = ashr i32 %51, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %15, align 1
  %57 = load i64, i64* %6, align 8
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i8
  store i8 %59, i8* %13, align 1
  %60 = load i8, i8* %13, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %7, align 4
  %63 = srem i32 %62, 8
  %64 = add nsw i32 %63, 8
  %65 = load i32, i32* %9, align 4
  %66 = srem i32 %65, 8
  %67 = sub nsw i32 %64, %66
  %68 = shl i32 %61, %67
  %69 = trunc i32 %68 to i8
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %9, align 4
  %72 = srem i32 %71, 8
  %73 = sub nsw i32 8, %72
  %74 = ashr i32 %70, %73
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %13, align 1
  %76 = load i8, i8* %15, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* %14, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = load i8, i8* %13, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %13, align 1
  %85 = load i8, i8* %13, align 1
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %192

90:                                               ; preds = %4
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %13, align 1
  %96 = load i8, i8* %13, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %7, align 4
  %99 = srem i32 %98, 8
  %100 = sub nsw i32 8, %99
  %101 = shl i32 %97, %100
  %102 = trunc i32 %101 to i8
  %103 = zext i8 %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = srem i32 %104, 8
  %106 = sub nsw i32 8, %105
  %107 = ashr i32 %103, %106
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %13, align 1
  %109 = load i8, i8* %13, align 1
  %110 = zext i8 %109 to i64
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = srem i32 %112, 8
  %114 = zext i32 %113 to i64
  %115 = shl i64 %111, %114
  %116 = or i64 %110, %115
  %117 = trunc i64 %116 to i8
  store i8 %117, i8* %13, align 1
  %118 = load i8, i8* %13, align 1
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  %123 = load i32, i32* %7, align 4
  %124 = srem i32 %123, 8
  %125 = sub nsw i32 8, %124
  %126 = load i64, i64* %6, align 8
  %127 = zext i32 %125 to i64
  %128 = ashr i64 %126, %127
  store i64 %128, i64* %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %146, %90
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i64, i64* %6, align 8
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i8
  store i8 %138, i8* %13, align 1
  %139 = load i64, i64* %6, align 8
  %140 = ashr i64 %139, 8
  store i64 %140, i64* %6, align 8
  %141 = load i8, i8* %13, align 1
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %131

149:                                              ; preds = %131
  %150 = load i32, i32* %9, align 4
  %151 = srem i32 %150, 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %191

153:                                              ; preds = %149
  %154 = load i64, i64* %6, align 8
  %155 = trunc i64 %154 to i8
  store i8 %155, i8* %17, align 1
  %156 = load i8*, i8** %12, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  store i8 %160, i8* %13, align 1
  %161 = load i8, i8* %13, align 1
  %162 = zext i8 %161 to i32
  %163 = load i32, i32* %9, align 4
  %164 = srem i32 %163, 8
  %165 = ashr i32 %162, %164
  %166 = load i32, i32* %9, align 4
  %167 = srem i32 %166, 8
  %168 = shl i32 %165, %167
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %13, align 1
  %170 = load i8, i8* %17, align 1
  %171 = zext i8 %170 to i32
  %172 = load i32, i32* %9, align 4
  %173 = srem i32 %172, 8
  %174 = sub nsw i32 8, %173
  %175 = shl i32 %171, %174
  %176 = trunc i32 %175 to i8
  %177 = zext i8 %176 to i32
  %178 = load i32, i32* %9, align 4
  %179 = srem i32 %178, 8
  %180 = sub nsw i32 8, %179
  %181 = ashr i32 %177, %180
  %182 = load i8, i8* %13, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %183, %181
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %13, align 1
  %186 = load i8, i8* %13, align 1
  %187 = load i8*, i8** %12, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 %186, i8* %190, align 1
  br label %191

191:                                              ; preds = %153, %149
  br label %192

192:                                              ; preds = %191, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
