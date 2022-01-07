; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_symtab.c_symtab_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_symtab.c_symtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i64, i32 }

@symhash = common dso_local global i32 0, align 4
@symcmp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symtab_init(%struct.symtab* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symtab*, align 8
  %5 = alloca i32, align 4
  store %struct.symtab* %0, %struct.symtab** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @symhash, align 4
  %7 = load i32, i32* @symcmp, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @hashtab_create(i32 %6, i32 %7, i32 %8)
  %10 = load %struct.symtab*, %struct.symtab** %4, align 8
  %11 = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.symtab*, %struct.symtab** %4, align 8
  %13 = getelementptr inbounds %struct.symtab, %struct.symtab* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.symtab*, %struct.symtab** %4, align 8
  %21 = getelementptr inbounds %struct.symtab, %struct.symtab* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @hashtab_create(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
