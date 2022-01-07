; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_convert_disposition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_convert_disposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMBOPEN_OCREATE = common dso_local global i32 0, align 4
@SMBOPEN_OTRUNC = common dso_local global i32 0, align 4
@SMBOPEN_OAPPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown disposition %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_disposition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_disposition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %23 [
    i32 128, label %5
    i32 132, label %9
    i32 133, label %11
    i32 131, label %13
    i32 130, label %17
    i32 129, label %19
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SMBOPEN_OCREATE, align 4
  %7 = load i32, i32* @SMBOPEN_OTRUNC, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @SMBOPEN_OAPPEND, align 4
  store i32 %10, i32* %3, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @SMBOPEN_OCREATE, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @SMBOPEN_OCREATE, align 4
  %15 = load i32, i32* @SMBOPEN_OAPPEND, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @SMBOPEN_OTRUNC, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @SMBOPEN_OCREATE, align 4
  %21 = load i32, i32* @SMBOPEN_OTRUNC, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @SMBOPEN_OAPPEND, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19, %17, %13, %11, %9, %5
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @cFYI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
