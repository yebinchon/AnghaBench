; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_convert_permissions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_inode.c_udf_convert_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileEntry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@S_IRWXO = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_SETGID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ICBTAG_FLAG_STICKY = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileEntry*)* @udf_convert_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_convert_permissions(%struct.fileEntry* %0) #0 {
  %2 = alloca %struct.fileEntry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fileEntry* %0, %struct.fileEntry** %2, align 8
  %6 = load %struct.fileEntry*, %struct.fileEntry** %2, align 8
  %7 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.fileEntry*, %struct.fileEntry** %2, align 8
  %11 = getelementptr inbounds %struct.fileEntry, %struct.fileEntry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @S_IRWXO, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 2
  %20 = load i32, i32* @S_IRWXG, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %17, %21
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 4
  %25 = load i32, i32* @S_IRWXU, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %22, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ICBTAG_FLAG_SETUID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @S_ISUID, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %27, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ICBTAG_FLAG_SETGID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @S_ISGID, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %37, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ICBTAG_FLAG_STICKY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @S_ISVTX, align 4
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %47, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
