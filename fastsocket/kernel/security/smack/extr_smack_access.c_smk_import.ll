; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_access.c_smk_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_access.c_smk_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smk_import(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smack_known*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.smack_known* @smk_import_entry(i8* %14, i32 %15)
  store %struct.smack_known* %16, %struct.smack_known** %6, align 8
  %17 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %18 = icmp eq %struct.smack_known* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %22 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %20, %19, %12
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local %struct.smack_known* @smk_import_entry(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
