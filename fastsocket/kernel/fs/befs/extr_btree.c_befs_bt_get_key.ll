; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_get_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, %struct.TYPE_7__*, i32, i32*)* @befs_bt_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @befs_bt_get_key(%struct.super_block* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  store i8* null, i8** %5, align 8
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = call i8* @befs_bt_keydata(%struct.TYPE_7__* %25)
  store i8* %26, i8** %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = call i32* @befs_bt_keylen_index(%struct.TYPE_7__* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.super_block*, %struct.super_block** %6, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fs16_to_cpu(%struct.super_block* %33, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %32, %31
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fs16_to_cpu(%struct.super_block* %42, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %41, %22
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i8* @befs_bt_keydata(%struct.TYPE_7__*) #1

declare dso_local i32* @befs_bt_keylen_index(%struct.TYPE_7__*) #1

declare dso_local i32 @fs16_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
