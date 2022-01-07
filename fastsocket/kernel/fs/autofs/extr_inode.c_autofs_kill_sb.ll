; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_autofs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_autofs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.autofs_sb_info = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AUTOFS_MAX_SYMLINKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"autofs: shutting down\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.autofs_sb_info* @autofs_sbi(%struct.super_block* %5)
  store %struct.autofs_sb_info* %6, %struct.autofs_sb_info** %3, align 8
  %7 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %8 = icmp ne %struct.autofs_sb_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %17 = call i32 @autofs_catatonic_mode(%struct.autofs_sb_info* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @put_pid(i32 %21)
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %24 = call i32 @autofs_hash_nuke(%struct.autofs_sb_info* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %47, %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AUTOFS_MAX_SYMLINKS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %38 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  br label %46

46:                                               ; preds = %36, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kfree(i32 %53)
  br label %55

55:                                               ; preds = %50, %9
  %56 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.super_block*, %struct.super_block** %2, align 8
  %58 = call i32 @kill_anon_super(%struct.super_block* %57)
  ret void
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(%struct.super_block*) #1

declare dso_local i32 @autofs_catatonic_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @autofs_hash_nuke(%struct.autofs_sb_info*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @kill_anon_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
