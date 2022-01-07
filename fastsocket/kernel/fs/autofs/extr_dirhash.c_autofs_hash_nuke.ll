; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_nuke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_nuke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.autofs_dir_ent** }
%struct.autofs_dir_ent = type { %struct.autofs_dir_ent*, i64, %struct.autofs_dir_ent* }

@AUTOFS_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_hash_nuke(%struct.autofs_sb_info* %0) #0 {
  %2 = alloca %struct.autofs_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.autofs_dir_ent*, align 8
  %5 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AUTOFS_HASH_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %2, align 8
  %12 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %14, i64 %16
  %18 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %17, align 8
  store %struct.autofs_dir_ent* %18, %struct.autofs_dir_ent** %4, align 8
  br label %19

19:                                               ; preds = %42, %10
  %20 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %21 = icmp ne %struct.autofs_dir_ent* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %24 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %23, i32 0, i32 2
  %25 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %24, align 8
  store %struct.autofs_dir_ent* %25, %struct.autofs_dir_ent** %5, align 8
  %26 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %32 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dput(i64 %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %37 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %36, i32 0, i32 0
  %38 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %37, align 8
  %39 = call i32 @kfree(%struct.autofs_dir_ent* %38)
  %40 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %41 = call i32 @kfree(%struct.autofs_dir_ent* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  store %struct.autofs_dir_ent* %43, %struct.autofs_dir_ent** %4, align 8
  br label %19

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dput(i64) #1

declare dso_local i32 @kfree(%struct.autofs_dir_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
