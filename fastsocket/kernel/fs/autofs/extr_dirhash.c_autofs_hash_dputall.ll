; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_dputall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_dputall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dirhash = type { %struct.autofs_dir_ent** }
%struct.autofs_dir_ent = type { i32*, %struct.autofs_dir_ent* }

@AUTOFS_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_hash_dputall(%struct.autofs_dirhash* %0) #0 {
  %2 = alloca %struct.autofs_dirhash*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_dirhash* %0, %struct.autofs_dirhash** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AUTOFS_HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %2, align 8
  %11 = getelementptr inbounds %struct.autofs_dirhash, %struct.autofs_dirhash* %10, i32 0, i32 0
  %12 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %12, i64 %14
  %16 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %15, align 8
  store %struct.autofs_dir_ent* %16, %struct.autofs_dir_ent** %4, align 8
  br label %17

17:                                               ; preds = %33, %9
  %18 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %19 = icmp ne %struct.autofs_dir_ent* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %22 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dput(i32* %28)
  %30 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %31 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %35 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %34, i32 0, i32 1
  %36 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %35, align 8
  store %struct.autofs_dir_ent* %36, %struct.autofs_dir_ent** %4, align 8
  br label %17

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
