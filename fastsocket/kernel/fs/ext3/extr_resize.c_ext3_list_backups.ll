; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_ext3_list_backups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_ext3_list_backups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@EXT3_FEATURE_RO_COMPAT_SPARSE_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i32*, i32*)* @ext3_list_backups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_list_backups(%struct.super_block* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  store i32 3, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load i32, i32* @EXT3_FEATURE_RO_COMPAT_SPARSE_SUPER, align 4
  %16 = call i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %10, align 8
  store i32 5, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %10, align 8
  store i32 7, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
