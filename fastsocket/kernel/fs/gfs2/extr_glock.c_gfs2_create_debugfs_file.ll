; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_create_debugfs_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_create_debugfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i8*, i32, i8*, i8*, i32 }

@gfs2_root = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"glocks\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@gfs2_glocks_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"glstats\00", align 1
@gfs2_glstats_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sbstats\00", align 1
@gfs2_sbstats_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_create_debugfs_file(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %4 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %5 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @gfs2_root, align 4
  %8 = call i32 @debugfs_create_dir(i32 %6, i32 %7)
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %72

18:                                               ; preds = %1
  %19 = load i32, i32* @S_IFREG, align 4
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %26 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, %struct.gfs2_sbd* %25, i32* @gfs2_glocks_fops)
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  br label %67

34:                                               ; preds = %18
  %35 = load i32, i32* @S_IFREG, align 4
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %42 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, %struct.gfs2_sbd* %41, i32* @gfs2_glstats_fops)
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %67

50:                                               ; preds = %34
  %51 = load i32, i32* @S_IFREG, align 4
  %52 = load i32, i32* @S_IRUGO, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %58 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56, %struct.gfs2_sbd* %57, i32* @gfs2_sbstats_fops)
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %62 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %67

66:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %65, %49, %33
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %69 = call i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %66, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.gfs2_sbd*, i32*) #1

declare dso_local i32 @gfs2_delete_debugfs_file(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
