; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dirhash = type { %struct.autofs_dir_ent** }
%struct.autofs_dir_ent = type { %struct.autofs_dir_ent*, %struct.autofs_dir_ent**, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"autofs_hash_insert: hash = 0x%08x, name = \00", align 1
@AUTOFS_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_hash_insert(%struct.autofs_dirhash* %0, %struct.autofs_dir_ent* %1) #0 {
  %3 = alloca %struct.autofs_dirhash*, align 8
  %4 = alloca %struct.autofs_dir_ent*, align 8
  %5 = alloca %struct.autofs_dir_ent**, align 8
  store %struct.autofs_dirhash* %0, %struct.autofs_dirhash** %3, align 8
  store %struct.autofs_dir_ent* %1, %struct.autofs_dir_ent** %4, align 8
  %6 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %7 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @DPRINTK(i8* %9)
  %11 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %12 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %15 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @autofs_say(i32 %13, i32 %16)
  %18 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %3, align 8
  %19 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %20 = call i32 @autofs_init_usage(%struct.autofs_dirhash* %18, %struct.autofs_dir_ent* %19)
  %21 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %22 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dget(i64 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %3, align 8
  %32 = getelementptr inbounds %struct.autofs_dirhash, %struct.autofs_dirhash* %31, i32 0, i32 0
  %33 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %32, align 8
  %34 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %35 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @AUTOFS_HASH_SIZE, align 4
  %39 = urem i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %33, i64 %40
  store %struct.autofs_dir_ent** %41, %struct.autofs_dir_ent*** %5, align 8
  %42 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %5, align 8
  %43 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %42, align 8
  %44 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %45 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %44, i32 0, i32 0
  store %struct.autofs_dir_ent* %43, %struct.autofs_dir_ent** %45, align 8
  %46 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %5, align 8
  %47 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %48 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %47, i32 0, i32 1
  store %struct.autofs_dir_ent** %46, %struct.autofs_dir_ent*** %48, align 8
  %49 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %50 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %5, align 8
  store %struct.autofs_dir_ent* %49, %struct.autofs_dir_ent** %50, align 8
  %51 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %52 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %51, i32 0, i32 0
  %53 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %52, align 8
  %54 = icmp ne %struct.autofs_dir_ent* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %30
  %56 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %57 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %56, i32 0, i32 0
  %58 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %4, align 8
  %59 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %58, i32 0, i32 0
  %60 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %59, align 8
  %61 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %60, i32 0, i32 1
  store %struct.autofs_dir_ent** %57, %struct.autofs_dir_ent*** %61, align 8
  br label %62

62:                                               ; preds = %55, %30
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @autofs_say(i32, i32) #1

declare dso_local i32 @autofs_init_usage(%struct.autofs_dirhash*, %struct.autofs_dir_ent*) #1

declare dso_local i32 @dget(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
