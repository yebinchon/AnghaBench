; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_sb_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_sb_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sb_host = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.gfs2_sb = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@GFS2_LOCKNAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sb_host*, i8*)* @gfs2_sb_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_sb_in(%struct.gfs2_sb_host* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_sb_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_sb*, align 8
  store %struct.gfs2_sb_host* %0, %struct.gfs2_sb_host** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gfs2_sb*
  store %struct.gfs2_sb* %7, %struct.gfs2_sb** %5, align 8
  %8 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %9 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @be32_to_cpu(i32 %11)
  %13 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @be32_to_cpu(i32 %18)
  %20 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %20, i32 0, i32 10
  store i8* %19, i8** %21, align 8
  %22 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be32_to_cpu(i32 %25)
  %27 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be32_to_cpu(i32 %31)
  %33 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be32_to_cpu(i32 %37)
  %39 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @be32_to_cpu(i32 %43)
  %45 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %48 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @be32_to_cpu(i32 %49)
  %51 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %54 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @be64_to_cpu(i32 %56)
  %58 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %62 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @be64_to_cpu(i32 %64)
  %66 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %70 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be64_to_cpu(i32 %72)
  %74 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %75 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %78 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @be64_to_cpu(i32 %80)
  %82 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %83 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %89 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %92 = call i32 @memcpy(i32 %87, i32 %90, i32 %91)
  %93 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %94 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %97 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GFS2_LOCKNAME_LEN, align 4
  %100 = call i32 @memcpy(i32 %95, i32 %98, i32 %99)
  %101 = load %struct.gfs2_sb_host*, %struct.gfs2_sb_host** %3, align 8
  %102 = getelementptr inbounds %struct.gfs2_sb_host, %struct.gfs2_sb_host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.gfs2_sb*, %struct.gfs2_sb** %5, align 8
  %105 = getelementptr inbounds %struct.gfs2_sb, %struct.gfs2_sb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32 %103, i32 %106, i32 16)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
