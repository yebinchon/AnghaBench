; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___lookup_one_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___lookup_one_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32, i32 }
%struct.dentry = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qstr*, %struct.dentry*, i32)* @__lookup_one_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lookup_one_len(i8* %0, %struct.qstr* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.qstr*, %struct.qstr** %7, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.qstr*, %struct.qstr** %7, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = call i64 (...) @init_name_hash()
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %42, %23
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %29
  %40 = load i32, i32* @EACCES, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @partial_name_hash(i32 %43, i64 %44)
  store i64 %45, i64* %10, align 8
  br label %25

46:                                               ; preds = %25
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @end_name_hash(i64 %47)
  %49 = load %struct.qstr*, %struct.qstr** %7, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %39, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @init_name_hash(...) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
