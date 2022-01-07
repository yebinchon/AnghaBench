; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_srvr_nfs.c_check_fs_addr_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_srvr_nfs.c_check_fs_addr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i64, i64 }

@AF_INET = common dso_local global i64 0, align 8
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EZK: down fileserver %s changed ip: %s -> %s\00", align 1
@FSF_DOWN = common dso_local global i32 0, align 4
@FSF_VALID = common dso_local global i32 0, align 4
@FSF_WANT = common dso_local global i32 0, align 4
@FSF_FORCE_UNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @check_fs_addr_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_fs_addr_change(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.hostent* null, %struct.hostent** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.hostent* @gethostbyname(i32 %9)
  store %struct.hostent* %10, %struct.hostent** %3, align 8
  %11 = load %struct.hostent*, %struct.hostent** %3, align 8
  %12 = icmp ne %struct.hostent* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.hostent*, %struct.hostent** %3, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = load %struct.hostent*, %struct.hostent** %3, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @STREQ(i8* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = ptrtoint %struct.in_addr* %33 to i32
  %35 = load %struct.hostent*, %struct.hostent** %3, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @memcmp(i32 %34, i32 %38, i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29, %19, %13, %1
  br label %101

42:                                               ; preds = %29
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @inet_ntoa(i32 %48)
  %50 = call i8* @xstrdup(i8* %49)
  store i8* %50, i8** %5, align 8
  %51 = ptrtoint %struct.in_addr* %4 to i32
  %52 = load %struct.hostent*, %struct.hostent** %3, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memmove(i32 %51, i32 %55, i32 4)
  %57 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @inet_ntoa(i32 %58)
  store i8* %59, i8** %6, align 8
  %60 = load i32, i32* @XLOG_WARNING, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @plog(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %64, i8* %65)
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @XFREE(i8* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = ptrtoint %struct.in_addr* %72 to i32
  %74 = load %struct.hostent*, %struct.hostent** %3, align 8
  %75 = getelementptr inbounds %struct.hostent, %struct.hostent* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memmove(i32 %73, i32 %77, i32 4)
  %79 = load i32, i32* @FSF_DOWN, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @FSF_VALID, align 4
  %86 = load i32, i32* @FSF_WANT, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = call i32 @map_flush_srvr(%struct.TYPE_8__* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = call i32 @flush_srvr_nfs_cache(%struct.TYPE_8__* %94)
  %96 = load i32, i32* @FSF_FORCE_UNMOUNT, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %42, %41
  ret void
}

declare dso_local %struct.hostent* @gethostbyname(i32) #1

declare dso_local i32 @STREQ(i8*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i32 @map_flush_srvr(%struct.TYPE_8__*) #1

declare dso_local i32 @flush_srvr_nfs_cache(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
