; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_dirhash.c_autofs_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_dir_ent = type { i64, i64, i32, %struct.autofs_dir_ent* }
%struct.autofs_dirhash = type { %struct.autofs_dir_ent** }
%struct.qstr = type { i64, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"autofs_hash_lookup: hash = 0x%08x, name = \00", align 1
@AUTOFS_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.autofs_dirhash*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.autofs_dirhash* %0, %struct.autofs_dirhash** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %6 = load %struct.qstr*, %struct.qstr** %4, align 8
  %7 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @DPRINTK(i8* %9)
  %11 = load %struct.qstr*, %struct.qstr** %4, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.qstr*, %struct.qstr** %4, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @autofs_say(i32 %13, i64 %16)
  %18 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %3, align 8
  %19 = getelementptr inbounds %struct.autofs_dirhash, %struct.autofs_dirhash* %18, i32 0, i32 0
  %20 = load %struct.autofs_dir_ent**, %struct.autofs_dir_ent*** %19, align 8
  %21 = load %struct.qstr*, %struct.qstr** %4, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @AUTOFS_HASH_SIZE, align 4
  %26 = urem i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %20, i64 %27
  %29 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %28, align 8
  store %struct.autofs_dir_ent* %29, %struct.autofs_dir_ent** %5, align 8
  br label %30

30:                                               ; preds = %63, %2
  %31 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  %32 = icmp ne %struct.autofs_dir_ent* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load %struct.qstr*, %struct.qstr** %4, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  %38 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %33
  %42 = load %struct.qstr*, %struct.qstr** %4, align 8
  %43 = getelementptr inbounds %struct.qstr, %struct.qstr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  %46 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.qstr*, %struct.qstr** %4, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  %54 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qstr*, %struct.qstr** %4, align 8
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcmp(i32 %52, i32 %55, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %67

62:                                               ; preds = %49, %41, %33
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  %65 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %64, i32 0, i32 3
  %66 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %65, align 8
  store %struct.autofs_dir_ent* %66, %struct.autofs_dir_ent** %5, align 8
  br label %30

67:                                               ; preds = %61, %30
  %68 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %5, align 8
  ret %struct.autofs_dir_ent* %68
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @autofs_say(i32, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
