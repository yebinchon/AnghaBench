; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dirhash = type { %struct.autofs_dir_ent** }
%struct.autofs_dir_ent = type { i32, i32, i32, %struct.autofs_dir_ent* }

@.str = private unnamed_addr constant [39 x i8] c"autofs_hash_enum: bucket %d, entry %d\0A\00", align 1
@AUTOFS_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.autofs_dir_ent* @autofs_hash_enum(%struct.autofs_dirhash* %0, i32* %1, %struct.autofs_dir_ent* %2) #0 {
  %4 = alloca %struct.autofs_dirhash*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.autofs_dir_ent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_dirhash* %0, %struct.autofs_dirhash** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.autofs_dir_ent* %2, %struct.autofs_dir_ent** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 16
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 65535
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DPRINTK(i8* %25)
  %27 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %6, align 8
  %28 = icmp ne %struct.autofs_dir_ent* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %6, align 8
  %31 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %30, i32 0, i32 3
  %32 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %31, align 8
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi %struct.autofs_dir_ent* [ %32, %29 ], [ null, %33 ]
  store %struct.autofs_dir_ent* %35, %struct.autofs_dir_ent** %10, align 8
  %36 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %37 = icmp ne %struct.autofs_dir_ent* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %80

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %76, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AUTOFS_HASH_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %4, align 8
  %48 = getelementptr inbounds %struct.autofs_dirhash, %struct.autofs_dirhash* %47, i32 0, i32 0
  %49 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %49, i64 %51
  %53 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %52, align 8
  store %struct.autofs_dir_ent* %53, %struct.autofs_dir_ent** %10, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %67, %46
  %56 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %57 = icmp ne %struct.autofs_dir_ent* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %65 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %64, i32 0, i32 3
  %66 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %65, align 8
  store %struct.autofs_dir_ent* %66, %struct.autofs_dir_ent** %10, align 8
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %55

70:                                               ; preds = %61
  %71 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %72 = icmp ne %struct.autofs_dir_ent* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %42

79:                                               ; preds = %73, %42
  br label %80

80:                                               ; preds = %79, %38
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  ret %struct.autofs_dir_ent* %87
}

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
