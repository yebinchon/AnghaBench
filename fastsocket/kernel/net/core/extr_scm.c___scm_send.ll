; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c___scm_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c___scm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.scm_cookie = type { %struct.TYPE_7__*, %struct.cred*, %struct.TYPE_8__, %struct.pid* }
%struct.TYPE_7__ = type { i32 }
%struct.cred = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.pid = type { i32 }
%struct.cmsghdr = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scm_send(%struct.socket* %0, %struct.msghdr* %1, %struct.scm_cookie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.scm_cookie*, align 8
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pid*, align 8
  %11 = alloca %struct.cred*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store %struct.scm_cookie* %2, %struct.scm_cookie** %7, align 8
  %12 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %13 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %12)
  store %struct.cmsghdr* %13, %struct.cmsghdr** %8, align 8
  br label %14

14:                                               ; preds = %179, %3
  %15 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %16 = icmp ne %struct.cmsghdr* %15, null
  br i1 %16, label %17, label %183

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %21 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %22 = call i32 @CMSG_OK(%struct.msghdr* %20, %struct.cmsghdr* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %203

25:                                               ; preds = %17
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %27 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOL_SOCKET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %179

32:                                               ; preds = %25
  %33 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %34 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %177 [
    i32 128, label %36
    i32 129, label %59
  ]

36:                                               ; preds = %32
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PF_UNIX, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %36
  br label %203

50:                                               ; preds = %41
  %51 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %52 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %53 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %52, i32 0, i32 0
  %54 = call i32 @scm_fp_copy(%struct.cmsghdr* %51, %struct.TYPE_7__** %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %203

58:                                               ; preds = %50
  br label %178

59:                                               ; preds = %32
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @CMSG_LEN(i32 4)
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %203

66:                                               ; preds = %59
  %67 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %68 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %67, i32 0, i32 2
  %69 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %70 = call i32 @CMSG_DATA(%struct.cmsghdr* %69)
  %71 = call i32 @memcpy(%struct.TYPE_8__* %68, i32 %70, i32 4)
  %72 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %73 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %72, i32 0, i32 2
  %74 = call i32 @scm_check_creds(%struct.TYPE_8__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %203

78:                                               ; preds = %66
  %79 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %80 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %79, i32 0, i32 3
  %81 = load %struct.pid*, %struct.pid** %80, align 8
  %82 = icmp ne %struct.pid* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %85 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %84, i32 0, i32 3
  %86 = load %struct.pid*, %struct.pid** %85, align 8
  %87 = call i32 @pid_vnr(%struct.pid* %86)
  %88 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %89 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @ESRCH, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  %96 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %97 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.pid* @find_get_pid(i32 %99)
  store %struct.pid* %100, %struct.pid** %10, align 8
  %101 = load %struct.pid*, %struct.pid** %10, align 8
  %102 = icmp ne %struct.pid* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %203

104:                                              ; preds = %93
  %105 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %106 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %105, i32 0, i32 3
  %107 = load %struct.pid*, %struct.pid** %106, align 8
  %108 = call i32 @put_pid(%struct.pid* %107)
  %109 = load %struct.pid*, %struct.pid** %10, align 8
  %110 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %111 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %110, i32 0, i32 3
  store %struct.pid* %109, %struct.pid** %111, align 8
  br label %112

112:                                              ; preds = %104, %83
  %113 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %114 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %113, i32 0, i32 1
  %115 = load %struct.cred*, %struct.cred** %114, align 8
  %116 = icmp ne %struct.cred* %115, null
  br i1 %116, label %117, label %139

117:                                              ; preds = %112
  %118 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %119 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %118, i32 0, i32 1
  %120 = load %struct.cred*, %struct.cred** %119, align 8
  %121 = getelementptr inbounds %struct.cred, %struct.cred* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %124 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %122, %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %117
  %129 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %130 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %129, i32 0, i32 1
  %131 = load %struct.cred*, %struct.cred** %130, align 8
  %132 = getelementptr inbounds %struct.cred, %struct.cred* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %135 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %176

139:                                              ; preds = %128, %117, %112
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  %142 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %142, %struct.cred** %11, align 8
  %143 = load %struct.cred*, %struct.cred** %11, align 8
  %144 = icmp ne %struct.cred* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %203

146:                                              ; preds = %139
  %147 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %148 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cred*, %struct.cred** %11, align 8
  %152 = getelementptr inbounds %struct.cred, %struct.cred* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.cred*, %struct.cred** %11, align 8
  %154 = getelementptr inbounds %struct.cred, %struct.cred* %153, i32 0, i32 3
  store i32 %150, i32* %154, align 4
  %155 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %156 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cred*, %struct.cred** %11, align 8
  %160 = getelementptr inbounds %struct.cred, %struct.cred* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.cred*, %struct.cred** %11, align 8
  %162 = getelementptr inbounds %struct.cred, %struct.cred* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %164 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %163, i32 0, i32 1
  %165 = load %struct.cred*, %struct.cred** %164, align 8
  %166 = icmp ne %struct.cred* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %146
  %168 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %169 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %168, i32 0, i32 1
  %170 = load %struct.cred*, %struct.cred** %169, align 8
  %171 = call i32 @put_cred(%struct.cred* %170)
  br label %172

172:                                              ; preds = %167, %146
  %173 = load %struct.cred*, %struct.cred** %11, align 8
  %174 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %175 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %174, i32 0, i32 1
  store %struct.cred* %173, %struct.cred** %175, align 8
  br label %176

176:                                              ; preds = %172, %128
  br label %178

177:                                              ; preds = %32
  br label %203

178:                                              ; preds = %176, %58
  br label %179

179:                                              ; preds = %178, %31
  %180 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %181 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %182 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %180, %struct.cmsghdr* %181)
  store %struct.cmsghdr* %182, %struct.cmsghdr** %8, align 8
  br label %14

183:                                              ; preds = %14
  %184 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %185 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = icmp ne %struct.TYPE_7__* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %190 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %197 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = call i32 @kfree(%struct.TYPE_7__* %198)
  %200 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %201 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %200, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %201, align 8
  br label %202

202:                                              ; preds = %195, %188, %183
  store i32 0, i32* %4, align 4
  br label %207

203:                                              ; preds = %177, %145, %103, %77, %65, %57, %49, %24
  %204 = load %struct.scm_cookie*, %struct.scm_cookie** %7, align 8
  %205 = call i32 @scm_destroy(%struct.scm_cookie* %204)
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %203, %202
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_OK(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @scm_fp_copy(%struct.cmsghdr*, %struct.TYPE_7__**) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @scm_check_creds(%struct.TYPE_8__*) #1

declare dso_local i32 @pid_vnr(%struct.pid*) #1

declare dso_local %struct.pid* @find_get_pid(i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @scm_destroy(%struct.scm_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
