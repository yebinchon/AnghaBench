; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/misc/unix/extr_errorcodes.c_apr_error_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/misc/unix/extr_errorcodes.c_apr_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Could not perform a stat on the file.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"A new pool could not be created.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"An invalid date has been provided\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"An invalid socket was returned\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"No process was provided and one was required.\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"No time was provided and one was required.\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"No directory was provided and one was required.\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"No lock was provided and one was required.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"No poll structure was provided and one was required.\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"No socket was provided and one was required.\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"No thread was provided and one was required.\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"No thread key structure was provided and one was required.\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"No shared memory is currently available\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"DSO load failed\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"The specified IP address is invalid.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"The specified network mask is invalid.\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Could not find the requested symbol.\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Not enough entropy to continue.\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"Your code just forked, and you are currently executing in the child process\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"Your code just forked, and you are currently executing in the parent process\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"The specified thread is detached\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"The specified thread is not detached\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"The specified child process is done executing\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"The specified child process is not done executing\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"The timeout specified has expired\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"Partial results are valid but processing is incomplete\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bad character specified on command line\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"Missing parameter for the specified command line option\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"End of file found\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Could not find specified socket in poll list.\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Shared memory is implemented anonymously\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Shared memory is implemented using files\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Shared memory is implemented using a key system\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"There is no error, this value signifies an initialized error code\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"This function has not been implemented on this platform\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"passwords do not match\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"The given path is absolute\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"The given path is relative\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"The given path is incomplete\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"The given path was above the root path\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"The given path is misformatted or contained invalid characters\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"The given path contained wildcard characters\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"The given lock was busy.\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"The process is not recognized.\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"Internal error (specific information not available)\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Error string not specified yet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @apr_error_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apr_error_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %50 [
    i32 146, label %5
    i32 150, label %6
    i32 164, label %7
    i32 155, label %8
    i32 149, label %9
    i32 142, label %10
    i32 153, label %11
    i32 152, label %12
    i32 151, label %13
    i32 147, label %14
    i32 143, label %15
    i32 144, label %16
    i32 148, label %17
    i32 159, label %18
    i32 163, label %19
    i32 162, label %20
    i32 136, label %21
    i32 145, label %22
    i32 134, label %23
    i32 132, label %24
    i32 167, label %25
    i32 130, label %26
    i32 169, label %27
    i32 168, label %28
    i32 128, label %29
    i32 133, label %30
    i32 170, label %31
    i32 171, label %32
    i32 140, label %33
    i32 129, label %34
    i32 172, label %35
    i32 135, label %36
    i32 131, label %37
    i32 156, label %38
    i32 141, label %39
    i32 154, label %40
    i32 165, label %41
    i32 137, label %42
    i32 157, label %43
    i32 166, label %44
    i32 161, label %45
    i32 139, label %46
    i32 160, label %47
    i32 138, label %48
    i32 158, label %49
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %51

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %51

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %51

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %51

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %51

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %51

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %51

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %51

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %51

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %51

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %51

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %51

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %51

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %51

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %51

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %51

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %51

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %51

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %51

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %51

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %51

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %51

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %51

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %51

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %51

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %51

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %51

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %51

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %51

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %51

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %51

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %51

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %51

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %51

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %51

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %51

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %51

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %51

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %51

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %51

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %51

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %51

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %51

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %51

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %51

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
