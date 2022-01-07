; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_get_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@MSG_PEEK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"recv error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Got SESSION KEEP ALIVE\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid NBT packet, code=%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*)* @smb_get_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_get_length(%struct.socket* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @MSG_PEEK, align 4
  %10 = call i32 @_recvfrom(%struct.socket* %7, i8* %8, i32 4, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 0, %22
  %24 = trunc i32 %23 to i8
  %25 = call i32 @PARANOIA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8 zeroext %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  switch i32 %37, label %46 [
    i32 0, label %38
    i32 130, label %38
    i32 133, label %39
  ]

38:                                               ; preds = %33, %33
  br label %53

39:                                               ; preds = %33
  %40 = call i32 @DEBUG1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @_recvfrom(%struct.socket* %41, i8* %42, i32 4, i32 0)
  %44 = load i32, i32* @ENODATA, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @PARANOIA(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %38
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @smb_len(i8* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46, %39, %30, %21, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @_recvfrom(%struct.socket*, i8*, i32, i32) #1

declare dso_local i32 @PARANOIA(i8*, i8 zeroext) #1

declare dso_local i32 @DEBUG1(i8*) #1

declare dso_local i32 @smb_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
