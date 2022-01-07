; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_skip_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_skip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @i386_skip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i386_skip_probe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call zeroext i8 @read_memory_unsigned_integer(i64 %6, i32 1)
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 104
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 106
  br i1 %14, label %15, label %49

15:                                               ; preds = %11, %1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 104
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 5, i32* %5, align 4
  br label %21

20:                                               ; preds = %15
  store i32 2, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %27 = call i32 @read_memory(i64 %25, i8* %26, i32 8)
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 232
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 6
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 196
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 7
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 8
  %46 = load i64, i64* %2, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %42, %37, %32, %21
  br label %49

49:                                               ; preds = %48, %11
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local zeroext i8 @read_memory_unsigned_integer(i64, i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
