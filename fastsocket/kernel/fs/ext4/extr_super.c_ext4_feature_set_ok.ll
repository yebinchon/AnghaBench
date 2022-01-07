; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_feature_set_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_feature_set_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EXT4_FEATURE_INCOMPAT_SUPP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Couldn't mount because of unsupported optional features (%x)\00", align 1
@EXT4_FEATURE_RO_COMPAT_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"couldn't mount RDWR because of unsupported optional features (%x)\00", align 1
@EXT4_FEATURE_RO_COMPAT_HUGE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_feature_set_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_feature_set_ok(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = load i32, i32* @EXT4_FEATURE_INCOMPAT_SUPP, align 4
  %8 = xor i32 %7, -1
  %9 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %6, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load i32, i32* @EXT4_FEATURE_INCOMPAT_SUPP, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %12, i32 %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %56

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_SUPP, align 4
  %32 = xor i32 %31, -1
  %33 = call i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_SUPP, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %36, i32 %37, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %56

49:                                               ; preds = %29
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %52 = call i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %49
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %35, %28, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
