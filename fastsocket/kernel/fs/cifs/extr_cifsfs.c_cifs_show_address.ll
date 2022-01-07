; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_show_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c",addr=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.TCP_Server_Info*)* @cifs_show_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_show_address(%struct.seq_file* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %4, align 8
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = bitcast %struct.TYPE_6__* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %9, %struct.sockaddr_in** %5, align 8
  %10 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %11 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_6__* %11 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %12, %struct.sockaddr_in6** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %42 [
    i32 129, label %19
    i32 128, label %25
  ]

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %25
  br label %45

42:                                               ; preds = %2
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %41, %19
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
