; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_filldir_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_filldir_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getdents_callback = type { i64, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64, i32)* @filldir_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filldir_one(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.getdents_callback*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.getdents_callback*
  store %struct.getdents_callback* %16, %struct.getdents_callback** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.getdents_callback*, %struct.getdents_callback** %13, align 8
  %18 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.getdents_callback*, %struct.getdents_callback** %13, align 8
  %22 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %6
  %27 = load %struct.getdents_callback*, %struct.getdents_callback** %13, align 8
  %28 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load %struct.getdents_callback*, %struct.getdents_callback** %13, align 8
  %34 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load %struct.getdents_callback*, %struct.getdents_callback** %13, align 8
  %40 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  store i32 -1, i32* %14, align 4
  br label %41

41:                                               ; preds = %26, %6
  %42 = load i32, i32* %14, align 4
  ret i32 %42
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
