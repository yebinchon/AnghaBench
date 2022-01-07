; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nfsd4_fs_locations = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NFSEXP_ALLFLAGS = common dso_local global i32 0, align 4
@NFSEXP_FSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c",fsid=%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c",anonuid=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",anongid=%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"refer\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"replicas\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",%s=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c",;@ \09\0A\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32, i32, %struct.nfsd4_fs_locations*)* @exp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp_flags(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nfsd4_fs_locations* %5) #0 {
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsd4_fs_locations*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nfsd4_fs_locations* %5, %struct.nfsd4_fs_locations** %12, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NFSEXP_ALLFLAGS, align 4
  %18 = call i32 @show_expflags(%struct.seq_file* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NFSEXP_FSID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %6
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, -2
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 65534
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30, %27
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, -2
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 65534
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %40, %37
  %48 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %49 = icmp ne %struct.nfsd4_fs_locations* %48, null
  br i1 %49, label %50, label %119

50:                                               ; preds = %47
  %51 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %52 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %57 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  store i8* %61, i8** %13, align 8
  %62 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %66 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %67 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @seq_escape(%struct.seq_file* %65, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %74 = call i32 @seq_putc(%struct.seq_file* %73, i8 signext 64)
  %75 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %76 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %77 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @seq_escape(%struct.seq_file* %75, i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %83

83:                                               ; preds = %115, %55
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %87 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %83
  %91 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %92 = call i32 @seq_putc(%struct.seq_file* %91, i8 signext 59)
  %93 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %94 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %95 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @seq_escape(%struct.seq_file* %93, i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %104 = call i32 @seq_putc(%struct.seq_file* %103, i8 signext 64)
  %105 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %106 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %107 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @seq_escape(%struct.seq_file* %105, i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %90
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %83

118:                                              ; preds = %83
  br label %119

119:                                              ; preds = %118, %50, %47
  ret void
}

declare dso_local i32 @show_expflags(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
