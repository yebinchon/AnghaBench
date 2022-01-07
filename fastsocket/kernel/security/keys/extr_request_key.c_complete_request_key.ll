; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_complete_request_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_complete_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_construction = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{%d,%d},%d\00", align 1
@key_negative_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complete_request_key(%struct.key_construction* %0, i32 %1) #0 {
  %3 = alloca %struct.key_construction*, align 8
  %4 = alloca i32, align 4
  store %struct.key_construction* %0, %struct.key_construction** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %6 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %11 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @kenter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %21 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* @key_negative_timeout, align 4
  %24 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %25 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @key_negate_and_link(%struct.TYPE_5__* %22, i32 %23, i32* null, %struct.TYPE_5__* %26)
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %30 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @key_revoke(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %28, %19
  %34 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %35 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @key_put(%struct.TYPE_5__* %36)
  %38 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %39 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @key_put(%struct.TYPE_5__* %40)
  %42 = load %struct.key_construction*, %struct.key_construction** %3, align 8
  %43 = call i32 @kfree(%struct.key_construction* %42)
  ret void
}

declare dso_local i32 @kenter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_negate_and_link(%struct.TYPE_5__*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @key_revoke(%struct.TYPE_5__*) #1

declare dso_local i32 @key_put(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.key_construction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
