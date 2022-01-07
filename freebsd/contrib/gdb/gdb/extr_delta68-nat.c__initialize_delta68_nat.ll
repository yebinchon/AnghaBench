; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_delta68-nat.c__initialize_delta68_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_delta68-nat.c__initialize_delta68_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlist = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/sysV68\00", align 1
@kernel_u_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot get kernel u area address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_delta68_nat() #0 {
  %1 = alloca [2 x %struct.nlist], align 16
  %2 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %1, i64 0, i64 0
  %3 = getelementptr inbounds %struct.nlist, %struct.nlist* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 16
  %4 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %1, i64 0, i64 1
  %5 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 0
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %1, i64 0, i64 0
  %7 = call i64 @nlist(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.nlist* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %1, i64 0, i64 0
  %11 = getelementptr inbounds %struct.nlist, %struct.nlist* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds [2 x %struct.nlist], [2 x %struct.nlist]* %1, i64 0, i64 0
  %16 = getelementptr inbounds %struct.nlist, %struct.nlist* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 16
  store i32 %17, i32* @kernel_u_addr, align 4
  br label %21

18:                                               ; preds = %9, %0
  %19 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %14
  ret void
}

declare dso_local i64 @nlist(i8*, %struct.nlist*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
