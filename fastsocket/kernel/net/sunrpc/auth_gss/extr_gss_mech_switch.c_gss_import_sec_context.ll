; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_import_sec_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_import_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_api_mech = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i64, %struct.gss_ctx*, i32)* }
%struct.gss_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_import_sec_context(i8* %0, i64 %1, %struct.gss_api_mech* %2, %struct.gss_ctx** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gss_api_mech*, align 8
  %10 = alloca %struct.gss_ctx**, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.gss_api_mech* %2, %struct.gss_api_mech** %9, align 8
  store %struct.gss_ctx** %3, %struct.gss_ctx*** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.gss_ctx* @kzalloc(i32 4, i32 %12)
  %14 = load %struct.gss_ctx**, %struct.gss_ctx*** %10, align 8
  store %struct.gss_ctx* %13, %struct.gss_ctx** %14, align 8
  %15 = icmp ne %struct.gss_ctx* %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %36

19:                                               ; preds = %5
  %20 = load %struct.gss_api_mech*, %struct.gss_api_mech** %9, align 8
  %21 = call i32 @gss_mech_get(%struct.gss_api_mech* %20)
  %22 = load %struct.gss_ctx**, %struct.gss_ctx*** %10, align 8
  %23 = load %struct.gss_ctx*, %struct.gss_ctx** %22, align 8
  %24 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.gss_api_mech*, %struct.gss_api_mech** %9, align 8
  %26 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i8*, i64, %struct.gss_ctx*, i32)*, i32 (i8*, i64, %struct.gss_ctx*, i32)** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.gss_ctx**, %struct.gss_ctx*** %10, align 8
  %33 = load %struct.gss_ctx*, %struct.gss_ctx** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 %29(i8* %30, i64 %31, %struct.gss_ctx* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.gss_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @gss_mech_get(%struct.gss_api_mech*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
