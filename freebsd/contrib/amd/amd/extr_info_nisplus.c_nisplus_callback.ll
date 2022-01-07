; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nisplus.c_nisplus_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nisplus.c_nisplus_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nis_callback_data = type { i32, i32 (i32, i8*, i8*)* }

@.str = private unnamed_addr constant [29 x i8] c"NISplus callback for <%s,%s>\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @nisplus_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nisplus_callback(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nis_callback_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ENTRY_VAL(i32* %10, i32 0)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ENTRY_LEN(i32* %12, i32 0)
  %14 = call i8* @strnsave(i32 %11, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ENTRY_VAL(i32* %15, i32 1)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ENTRY_LEN(i32* %17, i32 1)
  %19 = call i8* @strnsave(i32 %16, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.nis_callback_data*
  store %struct.nis_callback_data* %21, %struct.nis_callback_data** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load %struct.nis_callback_data*, %struct.nis_callback_data** %9, align 8
  %26 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %25, i32 0, i32 1
  %27 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %26, align 8
  %28 = load %struct.nis_callback_data*, %struct.nis_callback_data** %9, align 8
  %29 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 %27(i32 %30, i8* %31, i8* %32)
  %34 = load i32, i32* @FALSE, align 4
  ret i32 %34
}

declare dso_local i8* @strnsave(i32, i32) #1

declare dso_local i32 @ENTRY_VAL(i32*, i32) #1

declare dso_local i32 @ENTRY_LEN(i32*, i32) #1

declare dso_local i32 @dlog(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
