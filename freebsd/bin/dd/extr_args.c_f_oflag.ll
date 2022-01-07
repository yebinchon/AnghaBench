; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_oflag.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_oflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oflag = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@olist = common dso_local global i32 0, align 4
@c_oflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown open flag %s\00", align 1
@ddflags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @f_oflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_oflag(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.oflag*, align 8
  %4 = alloca %struct.oflag, align 4
  store i8* %0, i8** %2, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = call i32 @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.oflag, %struct.oflag* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @olist, align 4
  %12 = load i32, i32* @olist, align 4
  %13 = call i32 @nitems(i32 %12)
  %14 = load i32, i32* @c_oflag, align 4
  %15 = call %struct.oflag* @bsearch(%struct.oflag* %4, i32 %11, i32 %13, i32 8, i32 %14)
  store %struct.oflag* %15, %struct.oflag** %3, align 8
  %16 = load %struct.oflag*, %struct.oflag** %3, align 8
  %17 = icmp eq %struct.oflag* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.oflag, %struct.oflag* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load %struct.oflag*, %struct.oflag** %3, align 8
  %24 = getelementptr inbounds %struct.oflag, %struct.oflag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ddflags, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @ddflags, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local %struct.oflag* @bsearch(%struct.oflag*, i32, i32, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
