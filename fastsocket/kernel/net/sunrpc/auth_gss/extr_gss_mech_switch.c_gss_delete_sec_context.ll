; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_delete_sec_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_delete_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64)* }

@.str = private unnamed_addr constant [47 x i8] c"RPC:       gss_delete_sec_context deleting %p\0A\00", align 1
@GSS_S_NO_CONTEXT = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_delete_sec_context(%struct.gss_ctx** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gss_ctx**, align 8
  store %struct.gss_ctx** %0, %struct.gss_ctx*** %3, align 8
  %4 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %5 = load %struct.gss_ctx*, %struct.gss_ctx** %4, align 8
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.gss_ctx* %5)
  %7 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %8 = load %struct.gss_ctx*, %struct.gss_ctx** %7, align 8
  %9 = icmp ne %struct.gss_ctx* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @GSS_S_NO_CONTEXT, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %14 = load %struct.gss_ctx*, %struct.gss_ctx** %13, align 8
  %15 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %20 = load %struct.gss_ctx*, %struct.gss_ctx** %19, align 8
  %21 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i64)*, i32 (i64)** %25, align 8
  %27 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %28 = load %struct.gss_ctx*, %struct.gss_ctx** %27, align 8
  %29 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %26(i64 %30)
  br label %32

32:                                               ; preds = %18, %12
  %33 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %34 = load %struct.gss_ctx*, %struct.gss_ctx** %33, align 8
  %35 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @gss_mech_put(%struct.TYPE_4__* %36)
  %38 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  %39 = load %struct.gss_ctx*, %struct.gss_ctx** %38, align 8
  %40 = call i32 @kfree(%struct.gss_ctx* %39)
  %41 = load %struct.gss_ctx**, %struct.gss_ctx*** %3, align 8
  store %struct.gss_ctx* null, %struct.gss_ctx** %41, align 8
  %42 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dprintk(i8*, %struct.gss_ctx*) #1

declare dso_local i32 @gss_mech_put(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.gss_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
