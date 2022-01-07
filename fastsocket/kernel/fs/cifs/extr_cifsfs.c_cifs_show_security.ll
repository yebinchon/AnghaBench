; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TCP_Server_Info = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c",sec=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"lanman\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ntlmv2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ntlm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ntlmssp\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.TCP_Server_Info*)* @cifs_show_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_show_security(%struct.seq_file* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 131, label %10
    i32 129, label %13
    i32 130, label %16
    i32 132, label %19
    i32 128, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %28

25:                                               ; preds = %2
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %10
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %33 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
