; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_match_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.smb_vol = type { i32 }

@CIFSSEC_MUST_SIGN = common dso_local global i32 0, align 4
@CIFSSEC_MUST_SEAL = common dso_local global i32 0, align 4
@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_LANMAN = common dso_local global i32 0, align 4
@CIFSSEC_MAY_PLNTXT = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMV2 = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLM = common dso_local global i32 0, align 4
@CIFSSEC_MAY_KRB5 = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMSSP = common dso_local global i32 0, align 4
@CIFSSEC_MAY_SIGN = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_vol*)* @match_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_security(%struct.TCP_Server_Info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  %6 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %7 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %8 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CIFSSEC_MUST_SIGN, align 4
  %11 = load i32, i32* @CIFSSEC_MUST_SEAL, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %18 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @global_secflags, align 4
  %22 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %23 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %67 [
    i32 131, label %30
    i32 129, label %39
    i32 130, label %46
    i32 132, label %53
    i32 128, label %60
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CIFSSEC_MAY_LANMAN, align 4
  %33 = load i32, i32* @CIFSSEC_MAY_PLNTXT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %99

38:                                               ; preds = %30
  br label %68

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CIFSSEC_MAY_NTLMV2, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %99

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CIFSSEC_MAY_NTLM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %99

52:                                               ; preds = %46
  br label %68

53:                                               ; preds = %26
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CIFSSEC_MAY_KRB5, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %99

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %26
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CIFSSEC_MAY_NTLMSSP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %99

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %99

68:                                               ; preds = %66, %59, %52, %45, %38
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @CIFSSEC_MAY_SIGN, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %75 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %99

81:                                               ; preds = %73, %68
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @CIFSSEC_MUST_SIGN, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @CIFSSEC_MUST_SIGN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %89 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %92 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %99

97:                                               ; preds = %87, %81
  br label %98

98:                                               ; preds = %97
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %96, %80, %67, %65, %58, %51, %44, %37
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
