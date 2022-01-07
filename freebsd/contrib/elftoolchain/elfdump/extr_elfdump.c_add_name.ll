; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_add_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_add_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32 }
%struct.spec_name = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@sn_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, i8*)* @add_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_name(%struct.elfdump* %0, i8* %1) #0 {
  %3 = alloca %struct.elfdump*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spec_name*, align 8
  store %struct.elfdump* %0, %struct.elfdump** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @find_name(%struct.elfdump* %6, i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = call %struct.spec_name* @malloc(i32 8)
  store %struct.spec_name* %12, %struct.spec_name** %5, align 8
  %13 = icmp eq %struct.spec_name* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.spec_name*, %struct.spec_name** %5, align 8
  %19 = getelementptr inbounds %struct.spec_name, %struct.spec_name* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.elfdump*, %struct.elfdump** %3, align 8
  %21 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %20, i32 0, i32 0
  %22 = load %struct.spec_name*, %struct.spec_name** %5, align 8
  %23 = load i32, i32* @sn_list, align 4
  %24 = call i32 @STAILQ_INSERT_TAIL(i32* %21, %struct.spec_name* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %14, %10
  ret void
}

declare dso_local i64 @find_name(%struct.elfdump*, i8*) #1

declare dso_local %struct.spec_name* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.spec_name*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
