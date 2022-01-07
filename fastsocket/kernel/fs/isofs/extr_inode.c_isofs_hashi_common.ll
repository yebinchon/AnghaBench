; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_isofs_hashi_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/isofs/extr_inode.c_isofs_hashi_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, i32)* @isofs_hashi_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_hashi_common(%struct.dentry* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.qstr*, %struct.qstr** %5, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.qstr*, %struct.qstr** %5, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br label %32

32:                                               ; preds = %23, %20
  %33 = phi i1 [ false, %20 ], [ %31, %23 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %20

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %3
  %39 = call i64 (...) @init_name_hash()
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %44, %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = call signext i8 @tolower(i32 %48)
  store i8 %49, i8* %9, align 1
  %50 = load i8, i8* %9, align 1
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @partial_name_hash(i8 signext %50, i64 %51)
  store i64 %52, i64* %10, align 8
  br label %40

53:                                               ; preds = %40
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @end_name_hash(i64 %54)
  %56 = load %struct.qstr*, %struct.qstr** %5, align 8
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  ret i32 0
}

declare dso_local i64 @init_name_hash(...) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i64 @partial_name_hash(i8 signext, i64) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
