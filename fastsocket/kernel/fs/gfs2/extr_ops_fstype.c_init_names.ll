; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }

@GFS2_SB_ADDR = common dso_local global i32 0, align 4
@GFS2_FSNAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_names(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %28 = load i32, i32* @GFS2_SB_ADDR, align 4
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  %33 = call i32 @gfs2_read_super(%struct.gfs2_sbd* %27, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %104

38:                                               ; preds = %26
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @gfs2_check_sb(%struct.gfs2_sbd* %39, %struct.TYPE_6__* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %102

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %64 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %75 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @GFS2_FSNAME_LEN, align 4
  %85 = call i32 @strlcpy(i8* %82, i8* %83, i32 %84)
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %87 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* @GFS2_FSNAME_LEN, align 4
  %91 = call i32 @strlcpy(i8* %88, i8* %89, i32 %90)
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %93 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %99, %79
  %96 = load i8*, i8** %7, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 47)
  store i8* %97, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  store i8 95, i8* %100, align 1
  br label %95

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %46
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %36
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @gfs2_read_super(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_check_sb(%struct.gfs2_sbd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
