; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_mode_to_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_mode_to_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@S_IXUSR = common dso_local global i32 0, align 4
@FIBF_NOEXECUTE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@FIBF_NOREAD = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@FIBF_NOWRITE = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@FIBF_GRP_EXECUTE = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@FIBF_GRP_READ = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@FIBF_GRP_WRITE = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@FIBF_OTR_EXECUTE = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@FIBF_OTR_READ = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@FIBF_OTR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_to_prot(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @S_IXUSR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @FIBF_NOEXECUTE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @FIBF_NOREAD, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @FIBF_NOWRITE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @S_IXGRP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @FIBF_GRP_EXECUTE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @S_IRGRP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @FIBF_GRP_READ, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @S_IWGRP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @FIBF_GRP_WRITE, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @S_IXOTH, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @FIBF_OTR_EXECUTE, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @S_IROTH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @FIBF_OTR_READ, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @S_IWOTH, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @FIBF_OTR_WRITE, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
