; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifs_mapchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifs_unicode.c_cifs_mapchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i32, i8*, i32)* }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.nls_table*, i32)* @cifs_mapchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_mapchar(i8* %0, i32 %1, %struct.nls_table* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nls_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nls_table* %2, %struct.nls_table** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %31

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %27 [
    i32 132, label %15
    i32 133, label %17
    i32 128, label %19
    i32 129, label %21
    i32 131, label %23
    i32 130, label %25
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** %5, align 8
  store i8 58, i8* %16, align 1
  br label %28

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  store i8 42, i8* %18, align 1
  br label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  store i8 63, i8* %20, align 1
  br label %28

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  store i8 124, i8* %22, align 1
  br label %28

23:                                               ; preds = %13
  %24 = load i8*, i8** %5, align 8
  store i8 62, i8* %24, align 1
  br label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  store i8 60, i8* %26, align 1
  br label %28

27:                                               ; preds = %13
  br label %31

28:                                               ; preds = %25, %23, %21, %19, %17, %15
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %9, align 4
  ret i32 %30

31:                                               ; preds = %27, %12
  %32 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %33 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %32, i32 0, i32 0
  %34 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %38 = call i32 %34(i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i8*, i8** %5, align 8
  store i8 63, i8* %42, align 1
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %31
  br label %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
