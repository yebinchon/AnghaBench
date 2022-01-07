; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, i8**, i32*)* @fuse_copy_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_do(%struct.fuse_copy_state* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.fuse_copy_state*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @min(i32 %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %23 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @memcpy(i8* %24, i8* %26, i32 %27)
  br label %37

29:                                               ; preds = %16
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %33 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @memcpy(i8* %31, i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = zext i32 %38 to i64
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %37, %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %50 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %4, align 8
  %55 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = zext i32 %53 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %55, align 8
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
