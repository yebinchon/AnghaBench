; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_access_flags_to_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsacl.c_access_flags_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACCESS_DENIED = common dso_local global i32 0, align 4
@GENERIC_ALL = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_READ_RIGHTS = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@FILE_EXEC_RIGHTS = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@ACCESS_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown access control type %d\00", align 1
@DBG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"all perms\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"access flags 0x%x mode now 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @access_flags_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @access_flags_to_mode(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ACCESS_DENIED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GENERIC_ALL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @S_IRWXUGO, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GENERIC_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31, %26
  %38 = load i32, i32* @S_IWUGO, align 4
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GENERIC_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @S_IRUGO, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @GENERIC_EXECUTE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65, %60
  %72 = load i32, i32* @S_IXUGO, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %164

78:                                               ; preds = %4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ACCESS_ALLOWED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %164

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @GENERIC_ALL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* @S_IRWXUGO, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %92, %94
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @DBG2, align 4
  %100 = call i32 (i32, i8*, ...) @cFYI(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %164

101:                                              ; preds = %86
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @GENERIC_WRITE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106, %101
  %113 = load i32, i32* @S_IWUGO, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %113, %115
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %112, %106
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @GENERIC_READ, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125, %120
  %132 = load i32, i32* @S_IRUGO, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %132, %134
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %131, %125
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @GENERIC_EXECUTE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144, %139
  %151 = load i32, i32* @S_IXUGO, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %151, %153
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %144
  %159 = load i32, i32* @DBG2, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @cFYI(i32 %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %162)
  br label %164

164:                                              ; preds = %158, %91, %82, %77
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
