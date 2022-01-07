; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conv = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@clist = common dso_local global i32 0, align 4
@c_conv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown conversion %s\00", align 1
@ddflags = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: illegal conversion combination\00", align 1
@ctab = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @f_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_conv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.conv*, align 8
  %4 = alloca %struct.conv, align 8
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  %9 = call i32 @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.conv, %struct.conv* %4, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @clist, align 4
  %12 = load i32, i32* @clist, align 4
  %13 = call i32 @nitems(i32 %12)
  %14 = load i32, i32* @c_conv, align 4
  %15 = call %struct.conv* @bsearch(%struct.conv* %4, i32 %11, i32 %13, i32 24, i32 %14)
  store %struct.conv* %15, %struct.conv** %3, align 8
  %16 = load %struct.conv*, %struct.conv** %3, align 8
  %17 = icmp eq %struct.conv* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.conv, %struct.conv* %4, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load i32, i32* @ddflags, align 4
  %24 = load %struct.conv*, %struct.conv** %3, align 8
  %25 = getelementptr inbounds %struct.conv, %struct.conv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.conv, %struct.conv* %4, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.conv*, %struct.conv** %3, align 8
  %35 = getelementptr inbounds %struct.conv, %struct.conv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ddflags, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @ddflags, align 4
  %39 = load %struct.conv*, %struct.conv** %3, align 8
  %40 = getelementptr inbounds %struct.conv, %struct.conv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.conv*, %struct.conv** %3, align 8
  %45 = getelementptr inbounds %struct.conv, %struct.conv* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* @ctab, align 8
  br label %47

47:                                               ; preds = %43, %33
  br label %5

48:                                               ; preds = %5
  ret void
}

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local %struct.conv* @bsearch(%struct.conv*, i32, i32, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
