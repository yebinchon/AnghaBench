; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gen-protos.c_add_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gen-protos.c_add_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_SIZE = common dso_local global i32 0, align 4
@hash_tab = common dso_local global i64* null, align 8
@collisions = common dso_local global i32 0, align 4
@next_index = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = call i32 @hashstr(i8* %5, i32 %7)
  %9 = load i32, i32* @HASH_SIZE, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i64*, i64** @hash_tab, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load i32, i32* @collisions, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @collisions, align 4
  br label %21

21:                                               ; preds = %38, %18
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @HASH_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i64*, i64** @hash_tab, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %39

38:                                               ; preds = %21
  br label %21

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i64, i64* @next_index, align 8
  %42 = load i64*, i64** @hash_tab, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* @next_index, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @next_index, align 8
  ret void
}

declare dso_local i32 @hashstr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
