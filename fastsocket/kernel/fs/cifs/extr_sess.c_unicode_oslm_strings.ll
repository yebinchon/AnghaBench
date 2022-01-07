; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_unicode_oslm_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_unicode_oslm_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"Linux version \00", align 1
@CIFS_NETWORK_OPSYS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.nls_table*)* @unicode_oslm_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unicode_oslm_strings(i8** %0, %struct.nls_table* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.nls_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.nls_table* %1, %struct.nls_table** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %12 = call i32 @cifs_strtoUCS(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 32, %struct.nls_table* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 2, %13
  %15 = load i8*, i8** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = call %struct.TYPE_2__* (...) @init_utsname()
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %24 = call i32 @cifs_strtoUCS(i32* %19, i8* %22, i32 32, %struct.nls_table* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = load i8*, i8** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i8*, i8** @CIFS_NETWORK_OPSYS, align 8
  %35 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %36 = call i32 @cifs_strtoUCS(i32* %33, i8* %34, i32 32, %struct.nls_table* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 2, %37
  %39 = load i8*, i8** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8**, i8*** %3, align 8
  store i8* %44, i8** %45, align 8
  ret void
}

declare dso_local i32 @cifs_strtoUCS(i32*, i8*, i32, %struct.nls_table*) #1

declare dso_local %struct.TYPE_2__* @init_utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
