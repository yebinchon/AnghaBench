; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_hlfsd_setpwent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_hlfsd_setpwent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@passwdfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@passwd_fp = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to read passwd file %s: %m\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"reading password entries from file %s\00", align 1
@passwd_line = common dso_local global i64 0, align 8
@passwd_ent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pw_name = common dso_local global i32 0, align 4
@pw_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hlfsd_setpwent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlfsd_setpwent() #0 {
  %1 = load i32, i32* @passwdfile, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @setpwent()
  br label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @passwdfile, align 4
  %7 = call i32 @fopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @passwd_fp, align 4
  %8 = load i32, i32* @passwd_fp, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load i32, i32* @XLOG_ERROR, align 4
  %12 = load i32, i32* @passwdfile, align 4
  %13 = call i32 @plog(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %19

14:                                               ; preds = %5
  %15 = load i32, i32* @XLOG_INFO, align 4
  %16 = load i32, i32* @passwdfile, align 4
  %17 = call i32 @plog(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  store i64 0, i64* @passwd_line, align 8
  %18 = call i32 @memset(i8* bitcast (%struct.TYPE_2__* @passwd_ent to i8*), i32 0, i32 4)
  store i8* bitcast (i32* @pw_name to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @passwd_ent, i32 0, i32 0), align 8
  store i8* bitcast (i32* @pw_dir to i8*), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @passwd_ent, i32 0, i32 1), align 8
  br label %19

19:                                               ; preds = %14, %10, %3
  ret void
}

declare dso_local i32 @setpwent(...) #1

declare dso_local i32 @fopen(i32, i8*) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
