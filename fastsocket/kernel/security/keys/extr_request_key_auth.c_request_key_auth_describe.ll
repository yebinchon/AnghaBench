; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_request_key_auth_describe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_request_key_auth_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.request_key_auth* }
%struct.request_key_auth = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"key:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" pid:%d ci:%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, %struct.seq_file*)* @request_key_auth_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_key_auth_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.request_key_auth*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.request_key_auth*, %struct.request_key_auth** %8, align 8
  store %struct.request_key_auth* %9, %struct.request_key_auth** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = call i32 @seq_puts(%struct.seq_file* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load %struct.key*, %struct.key** %3, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %12, i8* %15)
  %17 = load %struct.key*, %struct.key** %3, align 8
  %18 = call i64 @key_is_instantiated(%struct.key* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %23 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %26 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @key_is_instantiated(%struct.key*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
