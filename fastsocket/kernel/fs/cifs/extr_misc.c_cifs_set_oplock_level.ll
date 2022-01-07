; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_cifs_set_oplock_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_cifs_set_oplock_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i32, i32, i32 }

@OPLOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Exclusive Oplock granted on inode %p\00", align 1
@OPLOCK_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Level II Oplock granted on inode %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_set_oplock_level(%struct.cifsInodeInfo* %0, i32 %1) #0 {
  %3 = alloca %struct.cifsInodeInfo*, align 8
  %4 = alloca i32, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 15
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @OPLOCK_EXCLUSIVE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %12 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %14 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %16 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %15, i32 0, i32 2
  %17 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %16)
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OPLOCK_READ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %26 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %28 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %27, i32 0, i32 2
  %29 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %32 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %3, align 8
  %34 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @cFYI(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
