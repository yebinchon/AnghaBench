; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_d_manage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_d_manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry=%p %.*s\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @autofs4_d_manage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_d_manage(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %7, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15, i32 %19, i32 %23)
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %26 = call i64 @autofs4_oz_mode(%struct.autofs_sb_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28, %2
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @d_mountpoint(%struct.dentry* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EISDIR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %88

39:                                               ; preds = %28
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @do_expire_wait(%struct.dentry* %40)
  %42 = load %struct.dentry*, %struct.dentry** %4, align 8
  %43 = call i32 @autofs4_mount_wait(%struct.dentry* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %39
  %49 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %50 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %53 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %48
  %59 = load %struct.dentry*, %struct.dentry** %4, align 8
  %60 = call i32 @d_mountpoint(%struct.dentry* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  %64 = call i32 @simple_empty(%struct.dentry* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62, %58
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISLNK(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71, %62
  %80 = load i32, i32* @EISDIR, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %71, %66
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %85 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %46, %38, %35
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i64 @autofs4_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @do_expire_wait(%struct.dentry*) #1

declare dso_local i32 @autofs4_mount_wait(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
