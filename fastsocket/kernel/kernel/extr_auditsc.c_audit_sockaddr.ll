; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_sockaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditsc.c_audit_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.audit_context* }
%struct.audit_context = type { i32, i8*, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_sockaddr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.audit_context*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  store %struct.audit_context* %10, %struct.audit_context** %6, align 8
  %11 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %12 = icmp ne %struct.audit_context* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %15 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 4, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %40 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %44 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %46 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %41, %34, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
