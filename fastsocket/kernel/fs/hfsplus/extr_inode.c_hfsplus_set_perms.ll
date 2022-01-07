; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_inode.c_hfsplus_set_perms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_inode.c_hfsplus_set_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.hfsplus_perm = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@S_IMMUTABLE = common dso_local global i32 0, align 4
@HFSPLUS_FLG_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@HFSPLUS_FLG_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.hfsplus_perm*)* @hfsplus_set_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfsplus_set_perms(%struct.inode* %0, %struct.hfsplus_perm* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfsplus_perm*, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.hfsplus_perm* %1, %struct.hfsplus_perm** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @S_IMMUTABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %15 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %16 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %23 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_APPEND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @HFSPLUS_FLG_APPEND, align 4
  %35 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %36 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* @HFSPLUS_FLG_APPEND, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %43 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = call i64 @HFSPLUS_I(%struct.inode* %47)
  %49 = bitcast %struct.TYPE_2__* %5 to i64*
  store i64 %48, i64* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %53 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpu_to_be16(i32 %56)
  %58 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %59 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_be32(i32 %62)
  %64 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %65 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %71 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call i64 @HFSPLUS_I(%struct.inode* %72)
  %74 = bitcast %struct.TYPE_2__* %6 to i64*
  store i64 %73, i64* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_be32(i32 %76)
  %78 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %79 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  ret void
}

declare dso_local i64 @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
