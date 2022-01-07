; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_host_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_host_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i64, i64 }

@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CFM_NORMALIZE_HOSTNAMES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Hostname %s normalized to %s\00", align 1
@CFM_DOMAIN_STRIP = common dso_local global i32 0, align 4
@hostd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host_normalize(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.hostent*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %5 = load i32, i32* @CFM_NORMALIZE_HOSTNAMES, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct.hostent* @gethostbyname(i8* %10)
  store %struct.hostent* %11, %struct.hostent** %3, align 8
  %12 = load %struct.hostent*, %struct.hostent** %3, align 8
  %13 = icmp ne %struct.hostent* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.hostent*, %struct.hostent** %3, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i8**, i8*** %2, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.hostent*, %struct.hostent** %3, align 8
  %24 = getelementptr inbounds %struct.hostent, %struct.hostent* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22, i64 %25)
  %27 = load i8**, i8*** %2, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.hostent*, %struct.hostent** %3, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i8* @strealloc(i8* %28, i8* %32)
  %34 = load i8**, i8*** %2, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %20, %14, %8
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %38 = load i32, i32* @CFM_DOMAIN_STRIP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8**, i8*** %2, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @hostd, align 4
  %45 = call i32 @domain_strip(i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  ret void
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @dlog(i8*, i8*, i64) #1

declare dso_local i8* @strealloc(i8*, i8*) #1

declare dso_local i32 @domain_strip(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
